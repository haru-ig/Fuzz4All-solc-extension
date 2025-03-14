pragma solidity ^0.8.0;
interface IFabric {
  function appendBytes() external;
  function appendBytes2(address to) external;
}
contract Fabric is IFabric {
    address public toAdd;
    bytes16 public x;
    bytes7 public y;
    bytes32 public z;
    function appendBytes() public {
        x = keccak256(bytes(x) ^ bytes(y));
    }
    function appendBytes2(address _to) public {
        _to.call{value: 0x1234}("");
    }
}
