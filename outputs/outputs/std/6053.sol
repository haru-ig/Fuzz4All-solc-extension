pragma solidity ^0.8.0;
interface IConvert {
    function toUnsignedInt(bytes memory encodedString) external view returns (uint);
    function toSignedInt(bytes memory encodedString) external view returns (int);
    function signedToUnsigned(int data) external view returns (uint);
    function signedToUnsigned1(int data) external view returns (uint1);
    function signedToUnsigned2(int data) external view returns (uint2);
    function signedToUnsigned3(int data) external view returns (uint3);
    function signedToUnsigned4(int data) external view returns (uint4);
    function signedToUnsigned5(int data) external view returns (uint5);
    function signedToUnsigned6(int data) external view returns (uint6);
    function signedToUnsigned7(int data) external view returns (uint7);
    function signedToUnsigned8(int data) external view returns (uint8);
    function unsignedToSigned(uint data) external view returns (int);
    function unsignedToSigned1(uint data) external view returns (int1);
    function unsignedToSigned2(uint data) external view returns (int2);
    function unsignedToSigned3(uint data) external view returns (int3);
    function unsignedToSigned4(uint data) external view returns (int4);
    function unsignedToSigned5(uint data) external view returns (int5);
    function unsignedToSigned6(uint data) external view returns (int6);
    function unsignedToSigned7(uint data) external view returns (int7);
    function unsignedToSigned8(uint data) external view returns (int8);
    function decodeAndStripAddress(bytes memory input) external view returns (address);
}

pragma solidity ^0.8.0;
interface IMath {
    function mul(uint a, uint b) external view returns (uint);
    function mul_001(uint128 a, uint b) external view returns (uint);
    function mul_002(uint256 a, uint b) external view returns (uint);
    function mul_003(uint32 a, uint b) external view returns (uint);
    function mul_004(uint40 a, uint b) external view returns (uint);
    function mul_005(uint48 a, uint b) external view returns (uint);
    function mul_006(uint56 a, uint b) external view returns (uint);
    function mul_007(uint64 a, uint b)
