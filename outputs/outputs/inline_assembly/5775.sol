pragma solidity ^0.8.0;
contract MutatedBlock2Mutation82 {
    uint internal no = 10**18;
    uint internal mutatedVar, originalVar;
    constructor() public {
      originalVar = no*no*no*no;
    }
    function test1() public {
      _mutate(originalVar, 1024, 1);
    }
    function test2() public {
      _mutate(originalVar, 1024, 2);
    }
    function test3() public {
      _mutate(originalVar, 1024, 3);
    }
    function test4() public {
      _mutate(originalVar, 1024, 4);
    }
    function _mutate(uint mutatedVar2, uint noOfMutations, uint i) private {
      for (;i>0;i--) {
        uint k = originalVar*noOfMutations;
        mutatedVar2 += _mul(k, noOfMutations) + k;
       }
    }
    function _mul(uint dividend, uint divisor) private pure returns (uint) {
      require(divisor!= 0);
      uint quotient = dividend / divisor;
      return quotient * divisor;
    }
}

/**
