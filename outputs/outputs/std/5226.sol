pragma solidity ^0.8.0;
contract Convert {
    function fromHex(string memory raw) internal pure returns (uint) {
        bytes memory chars = bytes(raw);
        uint result = 0;
        for (uint i = 0; i < chars.length; i++) {
            uint key = uint(int(chars[i]));
            if (key > 15) {
                key -= 7;
            }
            else {
                key = 31 - key;
            }
            result <<= 4;
            result |= key;
        }
        return result;
    }

    function toHex(uint value) internal pure returns (string memory) {
        bytes memory buffer = new bytes(2 * 2 + 1);
        buffer[0] = "0" & 0xf0 & (value >> 28);
        buffer[1] = "0" & 0x0f & (value >> 20) & 0xff;
        buffer[2] = "0" & 0x03 & (value >> 12) & 0xff;
        buffer[3] = "0" & 0x00 & (value >>  4) & 0xff;
        buffer[4] = "0" & 0x00 & ((value >>  0) & 0x1f) & 0xff;
        return string(buffer);
    }
}

pragma solidity ^0.8.0;
contract Array {
    uint[] array;

    function getElement(uint index) private view returns(uint) {
        return array[index];
    }
}
