import cv2
import mediapipe as mp

mpDraw = mp.solutions.drawing_utils
mpPose = mp.solutions.pose
pose = mpPose.Pose()

cap = cv2.VideoCapture(0, cv2.CAP_DSHOW)
cap.set(cv2.CAP_PROP_FRAME_WIDTH, 1280)
cap.set(cv2.CAP_PROP_FRAME_HEIGHT, 720)

counter = 0
squatting = False


while True:
    success, img = cap.read()
    img = cv2.flip(img, 1) # flip the image horizontally
    imgRGB = cv2.cvtColor(img, cv2.COLOR_BGR2RGB)
    results = pose.process(imgRGB)

    if results.pose_landmarks:
        mpDraw.draw_landmarks(img, results.pose_landmarks, mpPose.POSE_CONNECTIONS)
        points = {}
        for id, lm in enumerate(results.pose_landmarks.landmark):
            h, w, c = img.shape
            cx, cy = int(lm.x * w), int(lm.y * h)
            points[id] = (cx, cy)

        # track landmarks for hips
        cv2.circle(img, points[24], 15, (255, 0, 0), cv2.FILLED)
        cv2.circle(img, points[23], 15, (255, 0, 0), cv2.FILLED)
        cv2.circle(img, points[11], 15, (255, 0, 0), cv2.FILLED)

        # track landmarks for knees
        cv2.circle(img, points[26], 15, (0, 0, 255), cv2.FILLED)
        cv2.circle(img, points[25], 15, (0, 0, 255), cv2.FILLED)
        cv2.circle(img, points[13], 15, (0, 0, 255), cv2.FILLED)

        # track squatting position
        if not squatting and points[24][1] < points[26][1] < points[23][1]:
            ##print("Squatting")
            squatting = True
            counter += 1
        elif points[24][1] > points[26][1] or points[26][1] > points[23][1]:
            squatting = False

    cv2.putText(img, "Squats: " + str(counter), (10, 50), cv2.FONT_HERSHEY_SIMPLEX, 2, (255, 0, 0), 2)
    cv2.putText(img, "Press 'x' key to exit", (10, 100), cv2.FONT_HERSHEY_SIMPLEX, 1, (255, 0, 0), 2)

    cv2.imshow("img",img)
    
    key = cv2.waitKey(1)
    if key == ord('x'):
        break

cap.release()
cv2.destroyAllWindows()
    
