pragma solidity ^0.8.0;
contract Fabric is IFabric {
    address public toAdd;
    bytes16 public x;
    bytes7 public y;
    bytes32 public z;
    function appendBytes() public {
        toAdd.call{value: 0x1234}("");
    }
    function appendBytes2(address _to) public {
        _to.call{value: 0x1}("");
    }
}
