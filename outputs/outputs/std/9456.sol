pragma solidity ^0.8.0;
contract Convert
{
    function str2uint(string memory input) public returns(uint)
    {
        bytes memory dec = bytes(input);
        require(dec.length!= 0, "invalid input");
        for (uint i = 0; i< dec.length; i++)
        {
            require(dec[i] >= '0' && dec[i] <= '9', "invalid input");
        }
        uint decint = uint(dec);
        return decint;
    }
    function int2str(uint integer) pure public returns(string memory) {
        return uint2str(integer);
    }
    function uint2str(uint integer) pure public returns(string memory) {
        require(integer >= 1, "input not positive");
        uint temp = integer;
        uint digits = 1;
        while(temp!= 0) {
            digits++;
            temp /= 10;
        }
        bytes memory buffer = new bytes(digits);
        while(integer!= 0) {
            digits -= 1;
            buffer[digits] = uint8(uint32(integer % 10) + 48);
            integer /= 10;
        }
        return string(buffer);
    }
}
