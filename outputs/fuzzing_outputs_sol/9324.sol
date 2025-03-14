pragma solidity ^0.8.0;
contract Modifiers {
  function doSomething(uint256 value) public {
    if (value == 0) {
      value = 1;
    }
  }
}

pragma solidity ^0.8.0;
contract CallingFallback {
  function fallback() public {
  }
}

pragma solidity ^0.8.0;
contract CallingFallbackReceive {
  function receive() public payable {
  }
  function fallback() public {
  }
}

pragma solidity ^0.8.0;
contract Inheritance {
  uint result;

  function inherit(uint a) public {
    require(a > 1);
    result = a;
  }
}

contract ReturningNoDefaultFallback {
    address contractAddr;

    constructor(address _contractAddr) public {
      contractAddr = _contractAddr;
    }

    function getContractAddress() public view returns (address) {
      return contractAddr;
    }

    function fallback() public returns (uint val) {
      return 0xFFFFFFFF;
    }
}
contract ReturningRevertFallback {
    address contractAddr;

    constructor(address _contractAddr) public {
      contractAddr = _contractAddr;
    }

    function getContractAddress() public view returns (address) {
      if (contractAddr == address(0)) {
        revert("contract returned a NULL address");
      }
      return contractAddr;
    }

    function execute() public {

    }
}

contract ReturningFallbackWithStorage {
  mapping (uint8 => uint256) storage;

  function fallback() public {
    storage[msg.sender] = 0xDEF12;
  }
}
contract ReturningFallbackWithReturn {
  uint internal i;
  function getStoreValue() public pure returns (uint) {

    emit ReturningFallback(i);
    return i;
  }
  function fallback() public {
    emit ReturningFallback(i);
    i += 1;
  }
}

pragma solidity ^0.8.0;
contract AddressContract {
  function receive() external payable {
  }
  function getAddress() public pure returns (address) {
    return msg.sender;
  }
}
