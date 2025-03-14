pragma solidity ^0.8.0;
contract Test34 {
    struct E {
        uint256[2] array;
        uint256[2] array1;
    }
    function h() public pure returns (E memory) {
        E memory e;
        e.array = e.array;
        e.array1 = e.array1;
        return e;
    }
}



pragma solidity ^0.8.0;
contract Test35 {
    function test(string memory s) public pure returns (bytes memory) {
        bytes memory b = bytes("");
        uint8[1] memory b1;
        bytes memory b2 = bytes("z");
        uint64 b3;
        bytes memory b4;
        uint32 b5;
        bytes memory b6;
        uint16 b7;
        bytes memory b8;
        uint8 b9;
        bytes memory ba;
        {
            b = bytes("");
            b1 = bytes1;
            bytes memory b20 = bytes("z");
            uint64 b21;
            bytes memory b22;
            uint32 b23;
            bytes memory b24;
            uint16 b25;
            bytes memory b26;
            uint8 b27;
            bytes memory b28;
            uint8[1] memory b29;
            bytes memory b2a;
            uint16[2] memory b2b;
            bytes memory b2c;
            uint16[3] memory b2d;
            bytes memory b2e;
            uint32[3] memory b2f
