pragma solidity ^0.8.0;


uint[1000] foo;
uint64 constant init = 1;
contract QBFinal {
    uint64 rAB;
    uint64 rAB2;
    constructor() public {
        rAB2 = rAB;
        for (uint256 i = 0; i < 1000; i++) {
            for (uint256 j = 0; j < 1000; j++) {
                rAB2 = rAB2 * rAB2 * init + rAB2 * rAB;
            }
        }
    }
}

pragma solidity ^0.8.0;
uint[1000] foo;
uint64 constant init = 1;
uint rAB;
uint64 rAB2;
contract QBFinal {
  constructor() public {
    rAB2 = rAB;
    for(uint256 i = 0; i < 1000; i++) {
      for( uint256 j = 0; j < 1000; j++) {
        rAB2 = rAB2* rAB2*init + rAB2* rAB;
      }
    }
  }
}

pragma solidity^0.8.0;



contract QBFinal {
     uint[1000] foo;
     uint64 constant init = 1;
     function f() public {
        uint64 rAB;
        uint64 rAB2;
        for (uint256 i = 0; i < 1000; i++) {
           uint256 a = rAB;
           uint256 b = rAB2;
           for (uint256 x = 0; x < 1000; x++) {
                foo[i] = (b - a) / init + (a + b) * (a + b);

                rAB2 = rAB * rAB2 * init + rAB * rAB;
            }
            rAB = a;
        }
        for (uint256 i = 0; i < 10
