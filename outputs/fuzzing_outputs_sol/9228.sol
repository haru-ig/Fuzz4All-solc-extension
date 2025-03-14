pragma solidity ^0.8.0;
contract FallbackNoReturn {
  constructor(uint v) {
    require(v!= 0);
  }
}
contract FallbackContract {
  fallback () external payable {}
}




contract LowLevelCall {
  function nonReentrantLowLevelCall() public payable nonReentrant {}
}
contract LowLevelCallContract {
  function nonReentrantLowLevelCall() public payable nonReentrant {}
}
contract LowLevelCallWithStorage {
address payable _nonReentrantLowLevelCallStorage;
  constructor () {
    _nonReentrantLowLevelCallStorage = msg.value;
  }
}
contract LowLevelCallWithStorageContract {
address payable _nonReentrantLowLevelCallStorage;
  constructor () {
    _nonReentrantLowLevelCallStorage = msg.value;
  }
}



pragma solidity ^0.8.0;

contract LowLevelCallFallback  {
    function lowLevelCallFallback(uint amount) external payable {}
}
contract LowLevelCallFallbackContract {
    function lowLevelCallFallback(uint amount) external payable {}
}
contract LowLevelCallFallbackWithStorage {
    address payable _contractLowLevelCallFallbackStorage;
    function contractLowLevelCallFallback() public payable {}
    constructor() {
      _contractLowLevelCallFallbackStorage = msg.value;
    }
}
contract LowLevelCallFallbackWithStorageContract {
    address payable _contractLowLevelCallFallbackStorage;
    constructor() {
      _contractLowLevelCallFallbackStorage = msg.value;
    }
    function contractLowLevelCallFallback() public payable {}
}


contract BytesMemoryReturn {
  uint256 storedMemory;
  constructor () {
    storedMemory = 50;
  }
}
contract BytesMemoryReturnContract {
  uint256 storedMemory;
  constructor () {
    storedMemory = 50;
  }
}
contract BytesMemoryReturnWithStorage {
  address payable _contractBytesMemoryReturnStorage;
  uint256 storedMemory;
  constructor () {
    storedMemory = 50;
    _contractBytesMemoryReturnStorage = msg.value;
  }
}
contract BytesMemoryReturnWithStorageContract {
  address payable _contractBytesMemoryReturnStorage;
  uint256 storedMemory;
  constructor () {
    storedMemory = 50;
    _contractBytesMemoryReturnStorage = msg.value;
  }
}


contract WithMemoryReturn {
  constructor() public {
    msg.data.transfer(address(this).balance);
  }
}
contract WithMemoryReturn
