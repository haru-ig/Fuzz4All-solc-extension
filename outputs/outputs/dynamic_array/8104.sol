pragma solidity ^0.8.0;
interface IFabric {
    function append(bytes memory s, bytes memory d) external;
    function append2(bytes memory s, address _to) external;
    function append3(bytes memory s, address _to) external;
}
contract Fabric is IFabric {

    address public toAdd;
    address public toAdd2;
    address public toAdd3;

    bytes16 public x;
    bytes8 public y;
    bytes12 public z;

    bytes7 public x7;
    bytes9 public y9;
    bytes15 public z15;

    bytes32 public x32;
    bytes32 public y32;
    bytes64 public z64;

    uint public xUint;
    uint public yUint;
    uint public zUint;

    constructor(bytes memory arg) public {
        x = arg;
    }




    bool immutable public isStatic = false;
    function append(bytes memory s, bytes memory d) public {
        if (isStatic) {
            toAdd.call{value: 0x1234}("");
        } else {
       toAdd2.call{value: 0x1234}("");
        }

    }
    function append2(bytes memory s, address _to) public {
        if (!isStatic) {
            _to.call{value: 0x1234}("");
        }
    }
    function append3(bytes memory s, address _to) public {
        if (isStatic) {
            _to.call{value: 0x1234}("");
        } else {
            toAdd3.call{value:
