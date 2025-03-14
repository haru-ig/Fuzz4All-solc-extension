pragma solidity ^0.8.0;
contract Convert {
    using SafeMath for uint256;
    function intToString(uint256 x) public pure returns (string memory) {
        if(x == 0) return "0";
        bool negative = x < 0;
        if(negative) x = x.abs();

        uint n = 0;
        while(x!= 0) {
            x /= 10;
            n++;
        }
        bytes memory buffer = new bytes(n);
        while(x!= 0) {
            buffer[n--] = bytes1(uint8(48 + x % 10));
            x /= 10;
        }
        return (negative?"-":"") + string(buffer);
    }
    function bytes2int(bytes x) public pure returns (uint256) {
        uint256 y = 0;
        for(uint i = 0; i < x.length; i++) y = 10 * y + bytes1(x[i]);
        return y;
    }
}
