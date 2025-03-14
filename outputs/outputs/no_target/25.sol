pragma solidity ^0.8.0;
contract HelloWorld {
    bytes32 constant helloWorld = 0xddf252ad1be2c89b69c2b068fc35577b3ffe1161;
    function sayHelloWorld() public view returns (bytes32  ) {
        return helloWorld;
    }
    function setHelloWorld(bytes32 value) public {
        helloWorld = value;
    }
}
