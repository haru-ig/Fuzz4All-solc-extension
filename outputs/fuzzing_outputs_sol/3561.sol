pragma solidity ^0.8.0;
contract MutateSemantic5 {
    function modifyF() public returns (uint256 x) {
        bytes memory ab = "<KEY> ";
        bytes memory b = repeat(ab, 4);
        uint256 z = 3;
        uint256 w = 0;
        uint256 x = z + w;
        x = 10000;
        x = 4 + z + uint256(abi.decode(b, (uint256)));
        x = 1 + 5 + z + 31;
    }
}



contract MutateSemantic6 {
    function modifyF() public returns(uint256) {
        uint256 a = 3;
        uint32 b = 4;
        uint256 z = 3;
        uint256 w = 0;
        uint256 x1 = z + w;
        uint256 x2 = 100 * z + w - 10;
        uint256 x = z + w + 1;
        x1 = w + x1;
        return x + x1 + 1 + 3 + uint256(abi.decode(z, (uint32)));
        uint16 y = (uint16(a) >> 8) + (uint16(b) >> 5);
        return uint256(y);
    }
}



contract MutateSemantic7 {
    function modifyF() public returns(uint256) {
        uint256 x = 3;
        uint256 y;
        uint16 z = (uint16(x) >> 8) + (uint16(y) >> 7);
        x = 100 * x + y - 10;
        y = x+1;
        x += 1;
        return x + (1 + z + 26) * x;
    }
}



contract MutateSemantic8 {
    function modifyF() public returns (uint256) {
        uint256 x = 3;
        return uint256(uint256(x) + 1 + 26);
    }
    function modifyF2() public returns(uint256) {
        uint8 s1;
        uint8 s2;
        uint8 i;
        for (s1 = s2 = 0, i = 3; i < 15; i++) {
            s1 += 1;
            s2 *= 2;
        }
        s1 %= 2;
        return 10000 * s1 + s1 + bomb(uint256(100));
    }
}
