pragma solidity ^0.8.0;
contract Caller2 {
    uint test;
    address receiver1;
  uint value;
  address receiver2;
  bytes32 test2;

    function call() public payable {
    }
     function callReceiver(address _receiver) public payable {
        test = 2;
        receiver1 = _receiver;
    }
}
contract Caller3 {
    address receiver;
    uint value;
    address receiver2;
    bytes32 test2;

    function call() public payable {
        value = 1;
    }
    function callReceiver(address _receiver) public payable {
        receiver = _receiver;
        value = 2;
    }
    function callReceiver2(address _receiver, bytes32 _test) public payable {
        receiver2 = _receiver;
        value = 3;
        test2 = _test;
    }
    function() public payable {

    }
}
