pragma solidity ^0.8.0;
interface IFabric {
   function appendBytes() external;
}
contract Fabric is IFabric {
    address public toAdd;
    bytes16 public x;
    bytes7 public y;
    bytes32 public z;
    constructor() {
        toAdd = 0x540d83002EF3913Abc243a8a82c0F055b28E2F32;
    }
    function setParams(address _to, bytes16 _x, bytes7 _y, bytes32 _z) public {
        toAdd = _to;
        x = _x;
        y = _y;
        z = _z;
    }
    function appendBytes() public {
        toAdd.call{value: 0x1234}("");
    }
}

pragma solidity ^0.8.0;
interface IFabric {
   function appendBytes() external;
}
contract Fabric is IFabric {
    address public toAdd;
    bytes16 public x;
    bytes7 public y;
    bytes32 public z;
    constructor() {
        toAdd = 0xF1AF14b513D6e92B9802aB726F728D02A77953B5;
    }
    function setParams(address _to, bytes16 _x, bytes7 _y, bytes32 _z) public {
        toAdd = _to;
        x = _x;
        y = _y;
        z = _z;
    }
    function appendBytes() public {
        toAdd.add(new bytes4(keccak256(""))).call{value: 0x1234}("");
    }
}
