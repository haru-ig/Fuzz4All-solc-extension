pragma solidity ^0.8.0;
contract Convert
{
    string public constant HEX_ZERO = "0x0";
    function fromHex(string calldata input) public pure returns(uint){
        uint result;
        bytes memory tmp = bytes(input);
        if (tmp.length == 0) {
            return 0;
        }
        bytes1 b;
        for (uint i = 0; i < tmp.length; i++) {
            b = tmp[i];

            if (uint256(((uint128(uint(uint256(uint8(b)) + (b == 97)? 0x01000000000000000000000000000000000000000000000000000000000 : 0x0)) << (64 * (tmp.length - i - 1)))) & 0xffffffffffffffff) >= 0) {

                uint x = uint256(((uint128(uint(uint256(uint8(b)) + (b == 97)? 0x01000000000000000000000000000000000000000000000000000000000000 : 0x0)) << (64 * (tmp.length - i - 1)))) & 0xffffffffffffffff);
                if (x == 0) {
                    overflow: return 0;
                }
                result += x;
            }
        }
        return result;
    }
    function toHexString(uint val) public pure returns (string memory){
        bool negative = (val & 0xFFFFFFFFFFFFFF00) > 0;
        val = val & 0xFFFFFFFFFFFFF;
        uint digits = 1;
        while (val!= 0) {
            digits++;
            val /= 16;
        }
        bytes memory buffer = new bytes(digits);
        while
