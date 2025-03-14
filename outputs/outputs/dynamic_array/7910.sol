pragma solidity ^0.8.0;
contract Test28 {
    string[] public strings;
    uint[] public uints;
    function f() public {
        for (uint i = 0; i < 256; i++) {
            strings.push("string"+uint2str(i));
            uints.push(uint(i));
        }
    }
    function uint2str(uint x) public pure returns (string memory s) {
        if ((x / 100) >= 10) {
            s = string(abi.encodePacked(string(abi.encodePacked(x)))+".");
        } else {
            s = str(abi.encodePacked('0',string(abi.encodePacked(x)))));
        }
    }
    function str(bytes memory b) public pure returns (string memory) {
        string memory s = new string(b);
        bytes memory pattern = bytes(".");
        uint size = pattern.length;
        for (uint i = size; i > 0; i--) {
            if (s.length >= (i + 1)) {
                break;
            }
            s = '0'+s;
        }
        return s;
    }
}

/* 1 byte of length=257
 * 1 byte of length=257
 * 2 bytes of length=257
 * 4 bytes of length=257
 * 6 bytes of length=257
 * 1 array of length=256
 * 1 array of length=256
 * 2 array of length=256
 * 4 array of length=256
 * 6 array of length=256
 * 1 array of 2 bytes of length=256
 * 2 array of 4 bytes of length=256
 * 4 array of 8 bytes of length=256
 * 6 array of 16 bytes of length=256
 * 1 array of bytes of length=257
 * 2 array of bytes of length=257
 * 4 array of bytes of length=257
 * 6 array of bytes of length=257
 * 1 byte of length=257
 * 1 byte of length=257
 * 1 byte of length=257
 * 2 byte of length=257
 * 4 byte of length=257
 * 8 byte of length=257
 * 1 1 byte of length=257
 * 1 2 bytes of length=257
 * 1 4 bytes of
