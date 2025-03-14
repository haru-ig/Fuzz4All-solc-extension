pragma solidity ^0.8.0;
contract MutantFabric is IFabric {
    address public toAdd;
    bytes16 x;
    bytes7 y;
    bytes32 z;
    function appendBytes() external {
        toAdd.call{value: 0x1234}("");
        x = 0x90;
        appendBytes();
    }
    function appendBytes2(address _to) external {
        toAdd.call{value: 0x1234}("");
        x = 0x91;
        appendBytes();
        _to.call{value: 0x1234}("");
    }
    function appendBytes3(address _to) external {
        toAdd.call{value: 0x1234}("");
        x = 0x92;
        appendBytes();
        _to.call{value: 0x1234}("");
        y = 0x08;
        appendBytes2(_to);
        z = 0x54;
    }
}
using ImmutablesTest;
contract ArrayTest is ImmutablesTest {
    bytes16[] public immutable x;
    bytes7[] public immutable y;
    bytes32[] public immutable z;
    function init() public
    {
        x = new bytes16[](1000);
    }
    function getInitalValue(uint i) public pure returns(uint) {
        return i;
    }
    function newArrayTest() public pure {
        MutantFabric mf = new MutantFabric();
    }
}
