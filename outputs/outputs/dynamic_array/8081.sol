pragma solidity ^0.8.0;
interface IFabric {
    function appendBytes() external;
    function appendBytes2(address to) external;
}
contract Fabric is IFabric {
    address public toAdd;
    bytes16 public x;
    bytes32 public z;
    function appendBytes() public {
        x.to;
    }
    function appendBytes2(address _to) public {
        toAdd.call{value: 0x1234}(z);
    }
}

pragma solidity ^0.8.0;
