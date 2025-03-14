pragma solidity ^0.8.0;
interface IFabric {
   function appendBytes() external;
   function appendBytes2(address to) external;
}

contract Fabric is IFabric {
    address public toAdd;

    function appendBytes() public {
        toAdd.call{value: 1x234}("");
    }
}
