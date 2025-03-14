pragma solidity ^0.8.0;
contract PayableFallbackExample {
  function modify() public payable returns (uint256 _dout) {
    uint _datastorage;
    uint256 i;
    for (i = 0; i < 50; i++) {
      _datastorage += 1;
    }
    _dout = _datastorage;
  }
}

pragma solidity ^0.8.0;
contract NoOpPayable {
  function modify() public payable {
    uint i;
    for (i = 0; i < 50; i++) ;
  }
}
