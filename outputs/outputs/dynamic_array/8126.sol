pragma solidity ^0.8.0;
interface IFabric {
   function appendBytes() external;
   function appendBytes2(address _to) external;
   function appendBytes3(address _to) external;
 }
contract Fabric is IFabric {
   bytes16 public _y;
   bytes7 _x;
   bytes32 _z;
   constructor(bytes16 y, bytes7 x, bytes32 z) public {
        _y = y;
        _x = x;
        _z = z;
   }
   pragma solidity 0.8.4;
   function appendBytes() public {
        appendBytes2(address(this));
        appendBytes3(address(this));
   }
}
