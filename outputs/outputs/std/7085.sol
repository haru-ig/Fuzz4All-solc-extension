pragma solidity ^0.8.0;
contract BitwiseANDORShiftAND {
    uint256 a;
    function setA() public {
        uint256 tmpX = (a >> 24) & 0xffffff00;
        a = a << 24 & 0xffffff00;
    }
    function setB() public {
        uint256 tmpX = ((a >> 24) + ((a >> 24) & 0x000000ff)) << 8;
        uint256 tmpY = ((a >> 24) & 0x0000ff00) + 0x80000000;
        a = a << 24 & 0xffffff00;
    }
    function setY() public {
        uint256 tmpX = ((a << 24) & 0xffffff00) + ((a >> 24) & 0xffffff00);
        a = 0xff & (tmpX | tmpY);
    }
    function setX() public {
        uint256 tmpX = ((a + ((a >> 24) & 0x000000ff)) >> 8) > (a << 24) + ((a >> 24) & 0x0000ff00);
        uint256 tmpY = (0x80000000 | (a >> 24) & 0x000000ff) + 0xff & ~((a >> 24) & 0xffffe0ff);}
    function setZZ() public {
        if ((a >> 1) & 1) {
            if ((a >> 2) & 1) {
                a--;
            }
            a >>= 2;
        }
        uint256 tmpY = ((a >> 24) + ((a >> 16)) + (a & 0xffff000000)) >>> 2);
        a = 0xff & ((a << 1) | ~ tmpY & (a >> 23)));
    }
}
