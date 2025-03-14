pragma solidity ^0.8.0;
contract D {
    uint public c;
    uint public D;
    mapping(uint => uint[]) x;
    function f() public {
        for (uint i = 0; i < 6; i++) x[i] = new uint[](0);
        c = 2;
        D += 1;
    }
}




contract CallDataTest128 {
    function foo() public pure {
        assembly {
            let c := 136
          let E := add(c, 1)
          let D := add(c, 63)
          let X := add(c, 175)
          x0 := and(E, 1)
          x1 := and(E, 2)
          sstore(X, 1)
          sload(X)
          if sload(X) > 0 {
          let X := add(add(c, 63), 3)
          sstore(X, 1)
          sload(X) < 0
          } else {
        const PUSH1 := 0x01
        E := and(E, not(add(PUSH1, 1)))
          D := and(D, not(add(PUSH1, 1)))
      }
      E := add(add(E, E), E)
      sstore(add(X, 03), 1)

      let D := sub(D, sub(D, pop(X, 02)))
      pop(x0,)
      pop(x1,)
        E := add(pop(x0,), 1)
        sstore(add(D, 00), 1)
        }
    }
}
