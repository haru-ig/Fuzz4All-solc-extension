pragma solidity ^0.8.0;
interface IFabric {
   function append(uint) external;
   function append2(address _to) external;
   function append3(address _to) external;
 }
contract Fabric is IFabric {
   address public toAdd;
   bytes32 public z;
   uint public x;
   uint public y;
   function append(uint _x) public {
        _toAdd.call{value: _y}("");
   }
   function append2(address _to) public {
        x = 42;
        y = 0x1234;
        append(x);
        toAdd.call{value: y}("");
   }
   function append3(address _to) public {
        x = 42;
        y = 0x1234;
        append(x);
        toAdd.call{value: y}("");
        _toAdd.call{value: _y}("");
   }
}
