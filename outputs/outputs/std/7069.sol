pragma solidity ^0.8.0;
contract BitwiseXORAndSHLXORAndBitSwap {
    uint256 a;
    function setX() public {
        a = a + 5;
    }
    function add() public {
        a ^= a.swapbytes();
        a ^= a.swapbytes();
        a ^= a.swapbytes();
        a ^= a.swapbytes();
    }
}
