pragma solidity ^0.8.0;
interface IFabric {
   function appendBytes() external;
   function appendBytes2(address _to) external;
   function appendBytes3(address _to) external;
 }
contract Fabric is IFabric {
   address public toAdd;
   bytes public x;
   bytes2 public y;
   bytes3 public z;
   bytes calldata appendBytes() private {
       toAdd.call{value: 0}("");
   }
   bytes calldata appendBytes2(address _to) private {
        appendBytes();
        _to.call{value: 0}("");
   }
   bytes calldata appendBytes3(address _to) private {
        toAdd.call{value: 0}("");
        appendBytes();
   }
}
