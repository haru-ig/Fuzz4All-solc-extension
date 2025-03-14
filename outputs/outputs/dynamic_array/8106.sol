pragma solidity ^0.8.0;
import "./Fabric.sol";
contract TestDynamicArray {
    uint8 private version;
    address public toAdd1;
    address public toAdd2;
    address public toAdd3;
    address public toAdd4;
   function TestDynamicArray () {
    version = 1;
    toAdd1 = new  Fabric();
    toAdd2 = new  Fabric();
    toAdd3 = new  Fabric();
    toAdd4 = new  Fabric();
   }
    function test1(address a) public {
        a.call{value:1}("");
        a.call{value:1}("");
        a.call{value:1}("");
        a.call{value:1}("");
        a.call{value:1}("");
        toAdd1.appendBytes();
        toAdd1.appendBytes2(address(this));
        toAdd1.appendBytes3(toAdd2);
        toAdd1.appendBytes2(toAdd3);
        toAdd1.appendBytes();
        a = toAdd1;
        Fabric.appendBytes();
    }
}
