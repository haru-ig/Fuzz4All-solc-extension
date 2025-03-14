pragma solidity ^0.8.0;
contract Caller {
    event LogMessage(string msg);
    mapping(address => uint) public amount;
    function fallback() public {
        uint x = msg.value;
        amount[msg.sender] = amount[msg.sender] + x;
        emit LogMessage("This Ether value should be passed to Contract");
    }
}
