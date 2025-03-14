pragma solidity ^0.8.0;
contract BWrapperInterface {
    constructor() public {
    }
}
contract testABWrapperInterfaces {
    function testACWrapperInterfaces() public AWrapperInterface {
        BWrapperInterface bB = BWrapperInterface(0x00);
    }
}
