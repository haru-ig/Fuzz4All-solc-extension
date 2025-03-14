pragma solidity ^0.8.0;
interface IFabric2 {
   function appendBytes() external;
   function appendBytes2(address to) external;
}
contract Fabric2 is IFabric2 {
    bytes12 y;
}
