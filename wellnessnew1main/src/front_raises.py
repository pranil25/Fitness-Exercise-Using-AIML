import cv2
import mediapipe as mp

mpDraw = mp.solutions.drawing_utils
mpPose = mp.solutions.pose
pose = mpPose.Pose()

cap = cv2.VideoCapture(0,cv2.CAP_DSHOW)
cap.set(cv2.CAP_PROP_FRAME_WIDTH, 1280)
cap.set(cv2.CAP_PROP_FRAME_HEIGHT, 720)
up = False
counter = 0

while True:
    success, img = cap.read()
    img = cv2.flip(img, 1)
    imgRGB = cv2.cvtColor(img, cv2.COLOR_BGR2RGB)
    results = pose.process(imgRGB)
    # print(results.pose_landmarks)
    # print("-----------------------------------------------------")
    if results.pose_landmarks:
        mpDraw.draw_landmarks(img, results.pose_landmarks, mpPose.POSE_CONNECTIONS)
        points = {}
        for id, lm in enumerate(results.pose_landmarks.landmark):
            h,w,c = img.shape
            cx, cy = int(lm.x*w), int(lm.y*h)
            # print(id,lm,cx,cy)
            points[id] = (cx,cy)


        cv2.circle(img, points[12], 15, (255,0,0), cv2.FILLED)
        cv2.circle(img, points[16], 15, (255,0,0), cv2.FILLED)
        cv2.circle(img, points[11], 15, (255,0,0), cv2.FILLED)
        cv2.circle(img, points[15], 15, (255,0,0), cv2.FILLED)


        if not up and points[16][1] +40 < points[12][1] :
            print("UP")
            up = True
            counter += 1
        elif points[16][1] > points[12][1] :
            print("Down")
            up = False
        # print("----------------------",counter)
        if not up and  points[15][1] +40 < points[11][1] :
            print("UP")
            up = True
            counter += 1
        elif points[15][1] > points[11][1] :
            print("Down")
            up = False

    cv2.putText(img, "Front Raises: " + str(counter), (10, 50), cv2.FONT_HERSHEY_SIMPLEX, 2, (255, 0, 0), 2)
    cv2.putText(img, "Press 'x' key to exit", (10, 100), cv2.FONT_HERSHEY_SIMPLEX, 1, (255, 0, 0), 2)

    cv2.imshow("img",img)
    key = cv2.waitKey(1)
    if key == ord('x'):
        break

cap.release()
cv2.destroyAllWindows()



