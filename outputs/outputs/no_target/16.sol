pragma solidity ^0.8.0;
contract FixedContract {
    struct SomeData {
        uint value;
    }
    SomeData public data;
    function sayHelloWorld() public pure returns (SomeData memory) {
        return data;
    }
}
contract HelloWorld {
    function sayHelloWorld() public pure returns (string memory) {
        return HelloWorld.sayHelloWorld().value;
    }
}
contract HelloWorld {
    HelloWorld() external;
    function sayHelloWorld() public pure returns (string memory) {
        return "hello world";
    }
}
