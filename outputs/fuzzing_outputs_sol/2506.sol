pragma solidity ^0.8.0;

contract Caller {
  modifier onlyMod() {


    return ;
  }

  function call() public view onlyMod returns (uint256) {

    return storageValue;
  }
}

pragma solidity ^0.8.0;

contract DummyContract {

  fallback function() {}


  receive() external pure {}
}

contract FallbackFunction {
  contract DummyContract {
    uint256 storageValue = 0;
    function write() public pure {


      WriteStorage(_).write();
    }
  }
}
