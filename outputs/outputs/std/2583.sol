pragma solidity ^0.8.0;
interface IDarkRose {
    function claim(uint256 tokenId, address payable to) external;
}
library Array{
    struct Array{
        address[] storage;
        bytes32[] storage;
        uint256 length;
        uint256 lengthInHash;
        address[] memory;
        bytes32[] memory;
    }


    function pushInt(Array storage arr, uint256 wad) internal{
        bytes32 tmp = keccak256(abi.encode(uint256(keccak256(abi.encodePacked("0x", bytes(uint256(abi.encodePacked(uint(0xf12fa18923a9799629c3140ab2b7c2d72033ea2083e3b330cf6016c0db3d87a13244f548e8c6f5e42af063b9ce6593735e7786b31d0b80a755b3ae0d2e56709090a0a20c48f53d0a6be920e37508afdd5c05138977fb9c509210e29eb2bd1c52f76d68308b13501b260d360dffc80129840533bbbf7526d56130d26997360bf9fc842676761c07b91a77a41b58d780900535a8cc40af2a8375f51be8e540d700e997c91ea04e3b32dc60b8c05838f5189812a13d970c306ec090c7e125d555f8dd0ce9e9b61a31a12851dd0803f5146a11005385a8002562033e1aeda9b1a85bf829035208002000219f3e3a");))));
        bytes32 b32 = keccak256(abi.encode(uint256(ke
