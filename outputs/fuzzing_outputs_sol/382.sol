pragma solidity ^0.8.0;
contract Caller {
    address public a;
    function contract() public payable {
        a = msg.sender;
    }
    function call() public {
        a.transfer(msg.value);
    }
}
