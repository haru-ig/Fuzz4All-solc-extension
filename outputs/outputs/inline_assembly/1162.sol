pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MutatedLogCaller_withLog {
  event X();
  bytes32 constant X = '1001910';
  bytes32 x;
  function xxx(string memory calldata _new_x) public {
    x = X;
  }
  function xxy(bytes32 _new_x) public {
    x = _new_x;
  }
  function _calculate() public pure returns (bytes32) {
    return X;
  }
  function _modifyLog(string calldata x) public{
    who = msg.sender;
  }
}
pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MutatedLogCaller_withLog{
  contract X{
    function modifier() public view { }
  }
  bytes32 constant X = '1001910';
  bytes32 x;
  constructor() public {
    X.x();
  }
  function _calculate() public pure returns (bytes32) {
    return X;
  }
  function _modifyLog(string calldata x) public{
    X.x();
  }
}
contract X{
  function x() public pure {}
}
