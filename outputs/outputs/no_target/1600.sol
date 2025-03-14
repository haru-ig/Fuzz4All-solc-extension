pragma solidity ^0.8.0;
contract Semantic0005 {
    function greaterThan() public pure {
        uint160 x;
        uint160(x) > x;
    }
    function greaterThan2() public pure {
        uint256 x;
        uint256(x) > x;
    }
    function greaterThan3() public pure {
        uint128 x;
        uint128(x) > x;
    }
}
