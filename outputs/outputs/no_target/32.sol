pragma solidity ^0.8.0;
contract HelloWorld {
    HelloWorld self;
    HelloWorld getSelf() public view returns (HelloWorld) {
        return self;
    }
    HelloWorld() public {

    }
}
