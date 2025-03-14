pragma solidity ^0.8.0;
library HelloWorldExampleInterface {


    function writeHello() external ;
}
contract HelloWorldExample {
    HelloWorldExampleInterface interface_;
    function getPointer() public returns (address) {
        return address(interface_);
    }
}
