pragma solidity ^0.8.0;
contract c {
  struct S {
    int[3] i;
  }
  function f() public {
    uint32 i;
    S memory m;
    m.i.push(2, 3, 4);
    m.i.push(5, 6, 7);
    m.i.push(8, 9, 10);
    for(i=0; m.i.length!= 0; ++i) {
      m.i[i] /= 2;
    }
  }
}



pragma solidity ^0.8.0;
contract c {
  struct s_ {
    uint a;
    uint b;
  }
  uint a;
  uint b;
  function f() public {
     s memory s;
     s.a = 0;

     s.a = 10;

   }
}

/* If you are testing Solidity, we highly recommend turning tracing of the compiler on. To do so, add this to your compiler invocation:

`--trace-revm`

This will be a great way to discover the bug and fix it.

Be aware that it will only emit an error if there is a bug, so make sure you test in a case that has no bugs.

If all of your tests pass then you have found no significant bugs or errors with dynamic arrays! There are 4 test cases in which a dynamic array does not allow a non-empty slot
