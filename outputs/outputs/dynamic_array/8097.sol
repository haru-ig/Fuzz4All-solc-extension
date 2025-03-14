pragma solidity ^0.8.0;
interface IFabric {
    function appendBytes() public returns(bytes16);
    function appendBytes2(address _to) public returns(bytes7);
}
contract Fabric is IFabric {
    bytes16 public toAdd;
    bytes16 public mutated;
    address public toAddAgain;
    function appendBytes() public returns(bytes16) {
        toAdd.call{value: 0x1234}("");
    }
    function appendBytes2(address _to) public returns(bytes7) {
        toAddAgain.call{value: 0x1234}("");
    }
    function overrideAddress() public returns(address) {
        toAddAgain = address(this);
        return address(this);
    }
}
