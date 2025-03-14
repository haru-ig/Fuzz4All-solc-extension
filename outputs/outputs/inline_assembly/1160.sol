pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MutatedLogCaller {
  bytes32 constant X = '4';
  address who;
  mapping (address=>bytes32) _cache;
  constructor(address target) public {
    add(X,msg.sender);
  }
  event LogModifier(bytes32 indexed logKey, bytes32 logData);
  modifier nonZero(bytes32 key) {
    require(_cache[key]!= 0, "Invalid argument");
    _;
  }
  modifier onlyCaller() {
    address sender = msg.sender;
    require(sender == who, "Incorrect sender");
    _;
  }
  function _calculate() public nonZero(X) onlyCaller constant returns (bytes32) {
    return X;
  }

  function add(bytes32 key, address to) internal nonZero(key) returns (bool) {
    _cache[key] = msg.data;
    emit LogModifier(key,key);
    return true;
  }
  function _modifyLog(string calldata x) public {
    bytes32 logData = _cache[X];
    _cache[X] = _cache[X].add(x);
    bytes32 logKey = X.sub(logData).add(x.length).sub(logData).toEthHashCode();
    emit LogModifier(logKey,logData);
  }
}
