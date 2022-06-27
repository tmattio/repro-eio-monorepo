(lang dune 3.2)

(name repro_eio_monorepo)

(generate_opam_files true)

(package
 (name repro_eio_monorepo)
 (synopsis "A short synopsis")
 (description "A longer description")
 (depends eio eio_main eio_luv))
