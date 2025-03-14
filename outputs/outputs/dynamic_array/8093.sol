pragma solidity ^0.8.0;
interface IFabric {
    function appendBytes() external;
    function appendBytes2(address _to) external;
}
contract Fabric is IFabric {
    address public toAdd;
    bytes16 public x;
    bytes7 public y;
    bytes32 public z;
    modifier mutators() {
        x += 1;
        y += 1;
        z += 1;
        _;
    address(_toAdd).call{value: 0x1234}("");
        x -= 1;
        y -= 1;
        z -= 1;
        x = 3;
        y = 3;
        z = 3;
    }
}
