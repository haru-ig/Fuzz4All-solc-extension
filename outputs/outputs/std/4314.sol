pragma solidity ^0.8.0;

struct ByteArr
{
    bytes32 data;
}

struct CharArr
{
    bytes32 data;
}

struct StringArr
{
    bytes32 data;
}


struct AddressArr
{
    bytes32 data;
}

struct UintArr
{
    bytes32 data;
}

struct IntArr
{
    bytes32 data;
}

struct Arr
{
    bytes32 data;
}
pragma solidity ^0.8.0;
contract Store
{

    struct BoolArr
    {
        bytes32 data;
    }
    struct ByteArr
    {
        bytes data;
    }
    struct CharArr
    {
        bytes32 fdata;
    }
    struct IntArr
    {
        uint fdata;
    }

    struct StringArr
    {
        bytes32 data;
    }
    struct UintArr
    {
        uint8 data;
    }
    struct AddressArr
    {
        address fdata;
    }


    address public a = 0x0;

    AddressArr public arrA;

    UintArr public arrB;


    BoolArr public arrC;


    byte[40] public b;


    bytes32 public c;


    string public d;


    StringArr[10] public strarrA;

    function bytesConcat(bytes memory str1, bytes memory str2) internal pure returns (bytes memory)
    {
        bytes memory r = new bytes(str1.length + str2.length);
        bytes memory s1 = bytes(str1);
        bytes memory s2 = bytes(str2);
        uint s1Len = s1.length;
        uint s2Len = s2.length;
        uint i;
        for(i = 0; i < s1Len; ++i)
        {
            r[i] = s1[i];
        }
        for(i = 0; i < s2Len; ++i)
        {
            r[i + s1Len] = s2[i];
        }
        return r;
    }


    function arrConcat(address arr1, address arr2) internal pure returns(address)
    {
        address r;
        assembly {r := mload(arr1), mstore(r, add(mload(arr1), mload(arr2)) )}
        return(r);
    }

    function bytesConcat(byte[] memory array1, byte[] memory bytes2) internal pure returns (byte[])
    {
        bytes[] memory r = new bytes[](
