pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MutatedLogCaller {
  bytes32 constant X = '1001910';
  bytes32 x;
  address who;

  event e(
    string data,
    bytes32 from,
    bytes32 target,
    bytes32 x,
    bytes32 _X);

  constructor() public {
    x = X;
  }

  modifier canModify() {
    require(msg.sender == who, 'Sender Not Allowed');
    _;
  }

  function _modifyLog() public{
    string memory data = msg.data;
    bytes32 from =  X;
    bytes32 x = bytes32(keccak256(abi.encodePacked(msg.sender, from, msg.data)));
    bytes32 _X = _calculate();
    emit e(data, from, msg.sender, x, _X);
  }

  function _calculate() public pure returns (bytes32){
    return X;
  }

}
