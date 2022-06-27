let () = Eio_main.run @@ fun env ->
  main ~stdout:(Eio.Stdenv.stdout env)
