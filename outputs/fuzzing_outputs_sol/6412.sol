pragma solidity ^0.8.0;
contract Caller {
    Greeter public greeter;
    function callGreeter() public {
        greeter.setHello("Hello! from Caller");
        greeter.setHello("Hello! fallback!");
    }
    function getGreeter() public return (string memory) {
        return greeter.getHello();
    }
}
