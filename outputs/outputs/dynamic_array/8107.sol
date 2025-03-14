pragma solidity ^0.8.0;
interface IFabric {
   function appendBytes() external;
}
contract Fabric is IFabric {
    address public toAdd;
    bytes16 public x;
    bytes7 public y;
    bytes32 public z[10];
    function appendBytes() public {
        x = "x";
        toAdd.call{value: 0x1234}("");
    }
    function setZero() public returns (bytes memory) {
        z = new bytes[](0);
        y = keccak256(abi.encode(x, y)) <= 0;
        y = keccak256(abi.encodePacked(x, y)) <= 0;

        toAdd.call{value: 0x1234}("");
    }
    function setOne() public {}
}
