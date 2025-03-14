pragma solidity ^0.8.0;
interface IFabric2 {
   function appendBytes(bytes16 _x) external;
   function appendBytes2(bytes7 _y) external;
   function appendBytes3(bytes32 _z) external;
 }
contract Fabric2 is IFabric2 {
    bytes16 x;
    bytes7 y;
    bytes32 z;
    function appendBytes(bytes16 _x) public {
        toAdd.call{value: 0x1234}("");
    }
    function appendBytes2(bytes7 _y) public {
        appendBytes(_x);
        _to.call{value: 0x1234}("");
    }
    function appendBytes3(bytes32 _z) public {
        appendBytes(_x);
        toAdd.call{value: 0x1234}("");
        appendByte23(bytes7(0x55));
        x.call{value: 0x1234}("");
        x.call{value: 0x1234}("");
        appendByte23(bytes32(0xAFDF4256));
    }
}



contract InterfaceHelper {

    function balanceOf() public view returns (uint256);






    function transfer(address to, uint256 value) public;

    event Transfer(address indexed from, address indexed to, uint256 value);
}
