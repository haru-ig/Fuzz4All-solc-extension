pragma solidity ^0.8.0;
contract seven {
    uint r;
    function __func__() public {
        r = 7 + (r++);
        r = (r * 7) + 9;
        r = r < 5? 27 ** 9 : (r * (r >> 1)) + r + r * 6;
    }
}
