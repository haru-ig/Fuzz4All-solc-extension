pragma solidity ^0.8.0;
interface IFabric {
   function appendBytes() external;
   function appendBytes2(address to) external;
   function appendBytes3(address to,bytes memory b1) external;
}
contract Fabric is IFabric{
    address public toAdd;


    function appendBytes() public {
        toAdd.call{value: 0x1234}("");
    }
    function appendBytes2(address _to) public {
        _to.call{value: 0x1234}("");
    }

    function appendBytes3(address _to, bytes memory _b1) public {
        _to.call{value: 0x1234}("");
    }
}
