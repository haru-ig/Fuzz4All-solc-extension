pragma solidity ^0.8.0;
contract SomeClassExample {
    function modify() public pure {
      uint _datastorage;
      uint256 i;
      for (i = 0; i < 50; i++) {
        _datastorage += 1;
      }
      uint _dout = _datastorage;
    }
}

pragma solidity ^0.8.0;
contract SomeContractWithFallback {
    fallback function() pure public {
      uint _dout = 1;
    }

    receive() external payable pure {}
    receive() external pure {}
}
