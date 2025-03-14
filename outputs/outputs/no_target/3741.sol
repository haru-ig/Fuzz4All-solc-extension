pragma solidity ^0.8.0;
contract E1 {
    uint24 c;
    uint24 b;
    function g() public {
        require(b > 99999 * (0xFFFFFFFF / 0xFFFFFFFF) / c + 0xFFFFFFFF + (0x525252525252525252525252525252), "Wrong value returned");
    }
}
