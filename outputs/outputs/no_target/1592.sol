pragma solidity ^0.8.0;
contract Semantic0004 {
    function equal() public pure {
        (uint256 x) >> 0;
        (x == x);
        (uint256(x) >= x);
    }
    function equal2() public pure {
        (uint160 x) >> 0;
        (x == x);
        (uint160(x) >= x);
    }
    function equal3() public pure {
        (uint128 x) >> 0;
        (x == x);
        (uint128(x) >= x);
    }
}
