pragma solidity ^0.8.0;
contract ContractModificationExample {
    function modify() public pure {
      uint _datastorage;
      uint256 i;
      for (i = 0; i < 50; i++) {
        _datastorage += 1;
      }
      uint _dout = _datastorage;
    }
}
