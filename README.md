# Odin assertions library

A library of run-time assertions for Odin.

# Usage

Import library and insert library assertions where required, e.g.:

`assertions.is_equal(1, 2);`

To enable or disable these assertions modify the "assertions.odin" source file 
and toggle the `ASSERTIONS_ENABLED` boolean value.

The actual assertion statements are held behind compile-time check `when ASSERTIONS_ENABLED`,
so with this boolean disabled the logic behind each of these assertion processes won't
be compiled into your binary. Though the process names will persist.