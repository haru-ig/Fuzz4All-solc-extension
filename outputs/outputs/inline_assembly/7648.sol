pragma solidity ^0.8.0;
contract L1 {
    uint constant initialx = 0x0112ab11;
    function f() public pure returns (uint) {
        uint[] memory array = new uint[](100);
        require((initialx + 0x423FBD27) <= (0x7F7FFFFF) && (0x7F7FFFFF) <= (0x7F7FFFFF));
        array[0] = initialx + 0x23F51117 + initialx + 0x34123457 + initialx + 0x00008799 + initialx + 0x0112ab11 + 0x013F5112 + 0x017B3535 + 0x0412B2B3 + array[0x3F] + 0x00000000 + 0x00000000 + 0x00000000 + 0x00000000;
        return initialx + 0x51312345 + 0x62B37857 + initialx + 0x02345673 + 0x01234565 + 0x00000000 + 0x00000000 + initialx + array[2];
    }
}
pragma solidity ^0.8.0;
contract L2 {
    struct Item{
        uint a;
        uint b;
    }
    uint constant initialx = 0x01011111;
    Item[] items;
    function f() public pure returns (uint) {
        items[0] = Item(0x1000, initialx + 0x023F5113);
        (uint, int) memory temp = (0x01811109, 0x03123400);
        items[1] = Item(0x0F0F, initialx + initialx + 0x12345678 + 0x23B22233 + 0x5F666961 +
