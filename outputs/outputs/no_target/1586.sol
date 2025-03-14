pragma solidity ^0.8.0;
contract Semantic0003 {
    function equal() public pure {
        uint256 x = 0;
        uint x == x;
        uint(x) >= x;
    }
    function equal2() public pure {
        uint160 x = 160;
        uint x == x;
        uint(x) >= x;
    }
    function equal3() public pure {
        uint128 x = 128;
        uint x == x;
        uint(x) >= x;
    }
}
