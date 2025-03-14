pragma solidity ^0.8.0;
library l {
  struct s {
    uint a;
    uint b;
  }
  function get() public pure returns (s memory) {
    return l.s({
      a: 0,
      b: 1
    });
  }
}
contract Con {

  struct memory {
    uint t1;
    uint t2;
  }
  struct s {
    uint t3;
    memory memory;
  }
  s i1;

  function get() public {
    memory memory mem = l.get();
    require(i1.t1 == 2);
    require(i1.t2 == 2);
    require(i1.t3 == 0);
    i1 = memory(
      t1: 4,
      t2: 4
    );
    require(i1.t1 == 4);
    require(i1.t2 == 4);
    require(i1.t3 == 0);
  }

  constructor() public {
    i1 = memory(
      t1: 2,
      t2: 2
    );
    l.s({
      t3: 2,
      memory: memory(
        t1: 4,
        t2: 4
      )
    });
  }
}
