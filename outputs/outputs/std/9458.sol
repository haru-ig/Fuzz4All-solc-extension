pragma solidity ^0.8.0;
contract Convert
{
    function parseInt(string memory s) internal pure returns(uint) {
        return parseInt(s, 10);
    }
    function parseInt(string memory s, uint base) public pure returns (uint)
    {
        return parseInt(s, uint(base));
    }
    function parseInt(string memory s, uint base) internal pure returns(uint)
    {
        bytes memory bS = bytes(s);
        uint len = bS.length;
        uint index = 0;
        if (len <= 0) return uint(0);
        bytes1 c = bS[0];
        if(c >= '0' && c <= '9') {
            index = 1;
        }
        else if(base >= 0x20 && c!= '0' && c!= '0x' && c!= '0X') {
            index = 0;
        }
        else return uint(2**256);
        while(base >= 2 && index < len && bytes1(bS[index]) >= '0' && byte(bS[index]) <= '9') {
            index++;
            base /= 10;
        }
        uint val = 0;
        while(base > 0 && (index < len || bytes1(bS[index]) >= '0' && bS[index] <= '9')) {
            uint digit = bytes1(bS[index++]) - 48;
            bytes1 next = bytes1(bS[index]);
            if(next == 'x' || next == 'X') {
                digit *= 16;
            }
            val *= base;
            val += digit;
        }
        bytes1 suffix = '0x'.length == 2? 'x' : 'X';
        if(index == len) {
            return val;
        }
        uint mask = uint(
            unchecked(-(uint(-1)) >> uint(bytes1(s[index - 1])) )
        );
        if(uint(s[index]) & uint(-uint(1)) / 2)!= 0) {
            return val;
        }
        else return (uint(val) & mask) >> uint(1 - uint(s[index] & uint(uint(uint(-1)) >> uint(byte(s[index - 1])) )) );
    }
}
/* Please create a short program which uses new Solid
