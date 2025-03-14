pragma solidity ^0.8.0;
contract Caller {
  constructor() {
    _caller();
  }
  function _caller() public payable {
    throw;
    callValue(_call());
  }
  function callValue(uint a) public view {
    address(this).call{value: a}("");
  }
  function _call() internal pure returns (uint) {
    return 9;
  }
}




pragma solidity ^0.8.0;
contract CallerExample {
  function test() public {
    _store();
   Caller(address(this)).callValue(42);
  }
  function _store() internal {
    storageData = 1;
  }
  uint public storageData;
}

pragma solidity ^0.8.0;
contract CallerExample2 {
  function test() public {
    _store();
    Caller(address(this)).callValue(42);
  }
  function _store() internal {
    storageData = 1;
  }
  uint public storageData;
}

pragma solidity ^0.8.0;
contract CallerExampleTest {
  function test() public {
    Storage storageInstance = new Storage();
    Caller storageContract = new CallerExample(storageInstance.storageData);
    assertEq(storageContract.storageData, 1);
    storageInstance.storageData = 999;

    storageInstance.storageData.transfer(storageInstance);
    assertEq(storageInstance.storageData, 999);
    storageContract = new CallerExample2(storageInstance.storageData);
    assertEq(storageContract.storageData, 1);
  }
  function assertEq(uint v1, uint v2) private pure {
    require(v1 == v2, "equal failed");
  }
}
