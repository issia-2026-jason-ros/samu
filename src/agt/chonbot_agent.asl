!walk.           //move forward and avoid obstacles

stop_distance(20).     // stop when the obstacle is closer than this
resume_distance(30).   // move again when the obstacle is farther than this

+!walk
   <- .print("Hello world.");
      .move("forward");
      +moving;
      .print("completado!").
