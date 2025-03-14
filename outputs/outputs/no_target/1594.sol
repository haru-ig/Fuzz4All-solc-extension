pragma solidity ^0.8.0;
contract Semantic0008 {
    function equal() public pure {
        uint32 x = 0;
        x >> 0;
        (x == x);
        (uint32(x) >= x);
    }
    function equal2() public pure {
        address x = 0x00;
        x >> 0;
        (x == x);
        (address(x) >= x);
    }
}
