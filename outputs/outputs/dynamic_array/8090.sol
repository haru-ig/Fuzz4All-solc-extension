pragma solidity ^0.8.0;
interface IFabric {
    function assignAddress(address _to) external;
}
contract Fabric is IFabric {
    address public toAdd;
    bytes16 public x;
    bytes7 public y;
    bytes32 public z;
    function assignAddress(address _to) public {

        toAdd = _to;
    }
}

pragma solidity ^0.8.0;

contract FabricTest is Fabric {
    IFabric public immutable fabric;
    bytes16 public xtest;
    bytes7 public ytest;
    bytes32 public ztest;
    address public addrToAssign;
    constructor(IFabric _fabric) public {
        fabric = _fabric;
        xtest = 0x1;
        ytest = 0x2;
        ztest = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;
        addrToAssign = abi.encode(fabric);
    }
    function appendBytes() external {

        addrToAssign.call{value: 0x1234}("");
    }
    function appendBytes2(address _to) external {

        _to.call{value: 0x1234}("");
    }
    function assignAddress(address _to) external {


        fabric.assignAddress(_to);
    }
}
