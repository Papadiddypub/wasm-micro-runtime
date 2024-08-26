(module
  (tag $e0 (export "out of mem") )
  (tag $e1)
  (tag $e2 (param i32))

  (func (export "deepthought") (param i32) (result i32)
    (i32.const 42)
  )

  (func (export "divzero") (param i32) (result i32)
    (i32.const 42)
    (i32.const 0)
    (i32.div_u)
  )

  (func (export "throw") (param i32) (result i32)
    (i32.const 42)
    (throw $e0)
  )

  (func (export "throw2") (param i32) (result i32)
    (i32.const 42)
    (throw $e2)
  )
  
)
