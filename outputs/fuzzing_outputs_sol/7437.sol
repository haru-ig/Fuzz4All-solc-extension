pragma solidity ^0.8.0;
contract Mutator {
    uint256 public x;
    constructor(uint256 _x) public {
        x = _x * 3;
    }
    function mutatedFunction() public returns (uint256) {
        x *= 3;
        return x;
    }
  }

pragma solidity ^0.8.0;
contract CallerAndFallback {
    uint8 public data;
    function setData(uint8 _data) public {
        data = _data;
        if (data == 0) {
            fallback();
        }
    }
    function fallback() public pure {
        data = 2;
   }
  }

pragma solidity ^0.8.0;
contract CallerAndMutator {
    uint256 public x;
    ConstructorAndMutator public constructorAndMutator;
    function CallerAndMutator(uint256 _x) public {
        constructorAndMutator = new ConstructorAndMutator(_x);
    }
    function setData(uint8 _data) public {
        data = _data;
        if (data == 0) {
            fallback();
        }
    }
    function fallback() public pure {
        data = 2;
   }
  }

pragma solidity ^0.8.0;
contract CallerAndHighLevelCall {
    uint8 public data;
    function setData(uint8 _data) public {
        data = _data;
        lowLevelCall();
   }
    function lowLevelCall() public pure {}
  }
```
