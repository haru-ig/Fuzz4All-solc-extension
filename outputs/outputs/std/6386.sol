pragma solidity ^0.8.0;
contract MyMutatorV02 {

  function(uint,uint) public constant returns(uint) { return 0; }
}
contract HelloWorld {
  mapping (uint => string) public messageMap;
  mapping(uint => uint) public numberMap;
  bytes32 msgHash = keccak256("hello world");
  string private msg;
  uint private noOfBytes = 33;

  mapping (string => bool) private hasBeenProcessed;
  bytes32 private prehash;
  constructor(string memory _msg) {
    if (!hasBeenProcessed[_msg]) {
      msg = _msg;
      if (msg == msgHash)
        prehash = keccak256(abi.encodePacked(msg));
      hasBeenProcessed[_msg] = true;
    }
  }

  function getData() public returns (bytes32){
    return prehash;
  }

  function logMessage(string memory message) public {
    messageMap[noOfMessages] = message;
    noOfMessages++;
  }

  function getMessagesByFilter(uint i) public returns(uint){



    if (messageMap[i] == msg) {
      return noOfMessages;
    } else {
      return 0;
    }
  }

  function getAllMessages() public returns (uint){
    return noOfMessages;
  }

  function getNumberByFilter(string memory _message) public returns(uint){
    uint i = noOfMessages;
    while (i > 0 &&!isStringMatch(_message, messages[i])) {
      i--;
    }
    return i;
  }

  function isStringMatch(string memory _a, string memory _b) private view returns (bool){
    if (_b.length > 32) return false;

    for (uint i = 0; i < _b.length; i++) {
      bytes32 b = bytes32(bytes(_a)[i]);
