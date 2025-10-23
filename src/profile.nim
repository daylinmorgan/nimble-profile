# This is just an example to get you started. A typical binary package
# uses this file as the main entry point of the application.

const mode {.strdefine.} = "main"

when isMainModule:
  when mode == "main":
    echo("Hello, World!")
  elif mode == "test":
    echo "testing 1 2 3"
  else:
    {.fatal: "unknown mode" & mode}
