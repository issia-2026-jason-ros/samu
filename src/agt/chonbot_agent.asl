!walk.           //move forward and avoid obstacles

stop_distance(20).     // stop when the obstacle is closer than this
resume_distance(30).   // move again when the obstacle is farther than this

+!walk
   <- .print("Hello world.");
      .move("forward");
      +moving.

+ultrasonic(D) : moving & stop_distance(S) & D < S
   <- .move("stop");
      -moving;
      .print("Obstacle at ", D, ": stopping.").

+ultrasonic(D) : not moving & resume_distance(R) & D > R
   <- .move("forward");
      +moving;
      .print("Path clear (", D, "): moving forward.").