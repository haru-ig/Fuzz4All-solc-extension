pragma solidity ^0.8.0;
contract Convert
{

    function int(string memory _string) public pure returns (uint256)
    {
        return uint256(uint8(_string));
    }


    function bytes(uint256 _int) public pure returns (bytes memory)
    {
        bytes memory str = new bytes(2);
        str[0] = bytes1(_int);
        str[1] = 0;
        return str;
    }


    function bytes1(uint256 _int) private pure returns (bytes1)
    {
        bytes1 memory str;
        assembly
        {

          str := mload(add(_int, 32))
        }
        return str;
    }


    function bytes64(bytes memory _bytes) public pure returns (bytes64)
    {
        bytes value = _bytes;
        assembly
        {








        let uint64 := mload(add(_bytes, 32))


        mstore(0, uint8(uint64 and 0xff))
        mstore(1, uint8(uint64 >> 8))


        return and(mload(add(_bytes, 32)), 0xffff)
        }
    }


    function string(bytes memory _bytes) public pure returns (string memory)
    {
        bytes memory str = _bytes;
        assembly
        {

            let ptr := add(_bytes, 1)


            while eq(mload(ptr), 0)
            {
                let len := mload(add(ptr, 3))
                if eq(len, 0) {
