pragma solidity ^0.8.0;
contract Semantic0002 {
    int160 a;
    function __init() public {
        a = 1 << 10000;
    }
    function __eq() public pure {
        int160 x = 1 - a;
        uint256 x2 = a > int128(0);
    }
    function __ge128() public pure {
        int160 x = a + a * a;
        int128 x2 = a ** 128;
    }
}

contract Semantic0003 {

}
