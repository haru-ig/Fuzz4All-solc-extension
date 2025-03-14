pragma solidity ^0.8.0;
contract BitwiseXORAndSHLXORAnd6 {
    uint256 a2;
    uint256 a3;
    function setX() public {
        a2 = 7;
        a3 = 6;
        bitXOR();
        bitXORAndSHLXOR();
        bitXORAndSHLXORAnd6();
    }
    function bitXOR() public {
        a2 = a2 ^ a3;
        a3 = a2 ^ a3;
        a0 = a2 ^ a3;
    }
    function bitXORAndSHLXOR() public {
        uint256 a3 = bitSHLX(a2, a2);
        uint256 a4 = bitSHLX(a1, a1);
        uint256 a6 = bitSHLX(a0, a0);
        uint256 a7 = 26 + 248;
        uint256 a5 = (3 * a7) + 29858835;
        a2 = (a4 >> 4) - (a5 >> 4);
        a0 = bitSHLX(0x5ac635d8a9140827);
    }
    function bitXORAndSHLXORAnd6() public {
        a2 = a2 ^ a3;
        a3 = a2 ^ a3;
    }
}
