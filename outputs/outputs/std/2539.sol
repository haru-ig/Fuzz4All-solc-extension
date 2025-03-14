pragma solidity ^0.8.0;
contract Modify {

    address public currentOwner;
    address public owner;
    HelloWorld public Hello;
    function createModify() {
        currentOwner = msg.sender;
        owner = currentOwner;
        Hello = HelloWorld(0xAB13C8567d8c009A6d7091e099b158C77b0F1788);
    }
    function initialize() {
        Hello.add(1,1);
        currentOwner = msg.sender;
        assert(currentOwner!= owner);
        owner = currentOwner;
    }
    function initialize2() {
        Hello.add(1,1);
        currentOwner = msg.sender;
        assert(currentOwner == owner);
        owner = currentOwner;
    }
    function add() {
        uint result = Hello.add(1, 1);
        uint expected = 65;
        assert(result == expected);
    }
}
