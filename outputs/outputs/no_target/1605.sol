pragma solidity ^0.8.0;
contract Semantic0006 {
    function notEqualWithCastAndEquality() public pure {
        uint256 x;
        uint64(uint256(x)) >= uint64(uint160(x));
    }
    function notEqualWithCastAndEquality2() public pure {
        uint128 x;
        uint64(uint128(x)) >= uint64(uint160(x));
    }
    function notEqualWithCastAndEquality3() public pure {
        uint256 x;
        uint160(uint256(x)) >= uint64(uint160(x));
    }
    function notEqualWithCastAndEquality4() public pure {
        uint128 x;
        uint160(uint128(x)) >= uint128(uint160(x));
    }
}
