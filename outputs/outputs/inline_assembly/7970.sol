pragma solidity ^0.8.0;
contract L49 {
    uint x;
    uint y;
    uint z;
    function sneaky() public returns (bool, uint9) {
        uint64[] memory args = new uint64[](2);
        args[0] = x;
        args[1] = y;
        args[2] = z;
        args[3] = y;
        return (true, uint9(0));
    }
}
contract L49 {
    uint8 x;
    uint32 y;
    uint16 z;
    fixed256 a;
    function sneaky() public returns (uint8 x, uint32 y, uint16 z, uint16 a) {
        uint64[] memory args = new uint64[](4);
        args[0] = a;
        args[1] = x;
        args[2] = z;
        args[3] = y;
        return (x, y, z, uint16(0));
    }
}
