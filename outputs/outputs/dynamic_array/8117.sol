pragma solidity ^0.8.0;
interface IFabric {
   function appendBytes() external;
   function appendBytes2(address _to) external;
   function appendBytes3(address _to) external;
   function appendBytes4(address _to) external;
 }
contract Fabric is IFabric {
    address public toAdd;
    bytes24 public x;
    bytes32 public y;
    bytes48 public z;
    uint8 z2;
    function appendBytes() public {
        toAdd.call{value: 0x1234}("");
    }
    function appendBytes2(address _to) public {
        appendBytes();
        _to.call{value: 0x1234}("");
    }
    function appendBytes3(address _to) public {
        toAdd.call{value: 0x1234}("");
        appendBytes();
    }
    function appendBytes4(address _to) public {
        toAdd.call{value: 0x1234}("");
        appendBytes2(_to);
    }
}
