pragma solidity ^0.8.0;
interface SomeInterface {
    function m() external;
}
contract SomeContract {
    mapping (address => SomeInterface) public someInterfaceMap;
    SomeInterface public someInterface;
    constructor(SomeInterface _someInterface) {
        someInterface = _someInterface;
    }
    function test() public {
        someInterface.m();
    }
}
