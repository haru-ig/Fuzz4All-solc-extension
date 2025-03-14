pragma solidity ^0.8.0;
interface SomeInterface {
    function m() external;
}
contract SomeContract {
    mapping (address => SomeInterface) public someInterfaceMap;
    function setInterface(SomeInterface _someInterface) public {
        someInterfaceMap[msg.sender] = _someInterface;
    }
    function getInterface() public view returns (SomeInterface) {
        return someInterfaceMap[msg.sender];
    }
    function test() public {
        someInterface.m();
    }
}
