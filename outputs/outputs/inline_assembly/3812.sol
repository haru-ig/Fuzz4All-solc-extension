pragma solidity ^0.8.0;
contract ReuseOfVariable9 {
  uint constant _max = 1000;
  function x() view pure public returns (uint) {
    uint _i;
    assembly {
      _i := _max
    }
    return uint(_i);
  }
}

pragma solidity ^0.8.0;
contract InfiniteLoop9 {
  address payable _contractAddr;

  constructor() {
    _contractAddr = msg.sender;
    uint256 _a;
    address payable _a_addr;
    assembly {
      _a := 2 ** 256
      _a_addr := mload(0x40)
    }

    uint256 _b;
    assembly {
      _b := constantValue
    }
  }

  function x() view public returns (uint256) {
    uint256 _a;
    assembly {
      _a := amount(0x40)
    }
    return _a;
  }
  function terminationTest() pure public returns (bool) {
    uint256 _a;
    assembly {
      _a := amount(0x40)
    }
    return _a == 0;
  }


  function ethAddr() public view returns (address payable) {
    return _contractAddr;
  }

  function amount(bytes memory _target) pure public returns (uint2
