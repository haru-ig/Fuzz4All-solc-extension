pragma solidity ^0.8.0;
contract Caller {
    function foo() public {
        require(msg.value == msg.value *.5);
        require(msg.value == 10 ether);
        require(msg.value == 5e3 ether);
        require(msg.value == 1 finney);
        require(msg.value == 1 million finney);
        require(msg.value == 0 finney);
    }
}
