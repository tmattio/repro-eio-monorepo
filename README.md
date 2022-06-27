# Repro eio monorepo issue

- Run `opam monorepo pull`
- Run `dune build`

```
File "duniverse/luv/src/unix/dune", line 4, characters 36-44:
4 |  (foreign_stubs (language c) (names luv_unix))
                                        ^^^^^^^^
luv_unix.c:9:10: fatal error: 'uv.h' file not found
#include <uv.h>
         ^~~~~~
1 error generated.
File "_build/.dune/default/duniverse/luv/src/c/dune", line 98, characters 0-418:
 98 | (rule
 99 |  (targets generate_types_step_2.exe)
100 |  (deps (:c generate_types_step_2.c) helpers.h shims.h)
.....
110 |     -I %{ocaml_where} \
111 |     -I vendor/libuv/include -o %{targets}; \
112 |   fi")))
generate_types_step_2.c:8:10: fatal error: 'ctypes_cstubs_internals.h' file not found
#include "ctypes_cstubs_internals.h"
         ^~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
```
