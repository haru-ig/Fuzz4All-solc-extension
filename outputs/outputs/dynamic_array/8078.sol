pragma solidity ^0.8.0;
interface IFabric {
    function appendBytes() external;
    function appendBytes2(address to) external;
    function appendBytes3(address to,bytes memory b1) external;
}
contract Fabric is IFabric{
    address public preExistingTo;
    bytes4 constant public ADD_BYTES4_FID = bytes4(keccak256("appendBytes"));
    bytes4 constant public ADD_BYTES4_2_FID = bytes4(keccak256("appendBytes2"));
    bytes4 constant public ADD_BYTES4_3_FID = bytes4(keccak256("appendBytes3"));
    function appendBytes() public {
        address(_preExistingTo_).staticcall{value: 0x1234}(abi.encode(ADD_BYTES4_FID), "");
    }
    function appendBytes2(address _to) public {
        address(_preExistingTo_).staticcall{value: 0x1234}(abi.encode(ADD_BYTES4_2_FID, _to));
    }
    function appendBytes3(address _to, bytes memory _b1) public {
        address(_preExistingTo_).staticcall{value: 0x1234}(abi.encode(ADD_BYTES4_3_FID, _to,_b1));
    }
}
