pragma solidity ^0.8.0;
contract Convert {

    function uintFromStr(string memory _s) internal pure returns (int memory result) {
        bytes memory b = bytes(_s);
        if (b.length <= 0) return 0;
        uint i = 18;
        for (uint j = 0; j < 9; j++, i += 3) {
            byte x = b[b.length - i];
            uint8 digit = byte(uint8(x) - 48);
            uint base = 10**uint(i);
            result = result * base + digit;
        }
        return result;
    }
}
