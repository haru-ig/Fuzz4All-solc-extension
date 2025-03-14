pragma solidity ^0.8.0;
contract Caller {

    function callSomeContract(uint _amt) public { msg.sender.transfer(_amt); }

    function callSomeOtherContract(uint _amt) public { receive(); }
    function receive() public payable {}
}
