pragma solidity ^0.8.0;
contract Complex {
  function nonReturnFallback(uint256[] memory _arg) public nonpayable {
    _arg = new uint256[](_arg.length);
    revert();
  }
}
contract C {
  int aStorage;
  function nonReturnFallback() external {
    aStorage = 5;
    aStorage = 6;

    EtherTransfer(address(this), address(0));
  }
  receive() external {
  }
}
contract C {
  function nonReturnFallback() external {
    aStorage = 1;
    uint256[] memory _arg = new uint256[](1);
    _arg[0] = aStorage;
    _arg[0] = 2;
    _arg[0] = 3;
    _arg[0] = 5;
    uint256 _a[27] = [1, 2, 3, 4, 5, 6, 5, 7, 6, 8, 8, 6, 6, 5, 6, 6, 5, 6, 7, 7, 5, 5, 4, 3];
    uint256 _e = 0;
    uint256[] memory _r[27] = [_a, _a, _a, _a, _a, _a,  _a, _a, _a,  _a, _a,  _a,  _a, _a, _a,  _a, _a, _a,  _a, _a, _a, _a,  _a, _a, _a, _a, _a, _a, _a, _a, _a,  _a, _a, _a,  _a, _a, _a, _a, _a, _a, _a, _a, _a, _a, _a,  _a, _a, _a, _a, _a, _a, _a, _a, _a, _a, _a, _a,  _a, _a, _a, _a, _a, _a, _a, _a, _a, _a, _a, _a, _a];
    uint256 _s = 0;
    for(uint256 i = 0; i < _arg.length; i++) {
      _e = _r[i].length + 1;
      for(uint256 j = 0; j < _arg.length; j++) {
        _e += _r[i][j];
      }
    }
    while(!isContract(_msgSender())) {
      aStorage = aStorage;
      _e = _e + 1;
      for(uint256
