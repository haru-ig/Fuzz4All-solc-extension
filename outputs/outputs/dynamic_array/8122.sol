pragma solidity ^0.8.0;
interface IFabric {
   function appendBytes() external;
   function appendStrings() external;
 }
contract Fabric is IFabric {
    address public toAdd;
    bytes16 public x;
    bytes7 public y;
    bytes32 public z;
    function appendBytes() public {
        toAdd.call{value: 0x1234}("");
    }
    function appendStrings() public {
        toAdd.call{value: 0x1234}("");
        toAdd.call{value: 0x1234}("");
    }
}


pragma solidity >=0.5.0;
contract MyContract {
    IFabric public fabric;
    function setFabric(IFabric fac) public {
        fabric = fac;
    }
}
contract CalldataArrayAllocationBug {
    function callDataAllocFix(uint256 dataLen) public {
        fabric.callDataAppendBytes(abi.encode(uint32(dataLen)));
        fabric.appendBytes2(0x0);
        uint8[] memory z = new bytes8[](dataLen / 8);
        fabric.appendBytes2(0x0);
    }
    FIBER calldataAllocFix2(uint256 dataLen) public {
        fabric.callDataAppendBytes(abi.encode(uint32(dataLen)));
        fabric.appendBytes2(0x0);
        uint8[] memory z = new bytes8[](dataLen / 8);
        fabric.appendBytes2(0x0);
    }
}
