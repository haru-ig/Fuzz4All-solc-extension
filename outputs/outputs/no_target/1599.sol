pragma solidity ^0.8.0;
contract Semantic0004 {
    function notEqual() public pure {
        uint160 x;
        uint160(x) >= x;
    }
    function notEqual2() public pure {
        uint256 x;
        uint256(x) >= x;
    }
    function notEqual3() public pure {
        uint128 x;
        uint128(x) >= x;
    }
}
