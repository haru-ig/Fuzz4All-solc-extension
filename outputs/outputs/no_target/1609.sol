pragma solidity ^0.8.0;
contract Semantic0007 {
    function semanticEqualityWithCastAndEquality() public pure {
        int x;
        uint160(int(x)) >= int(uint160(x));
    }
    function semanticEqualityWithCastAndEquality2() public pure {
        int x;
        uint160(int(x)) >= uint64(int(uint160(x)));
    }
    function semanticEqualityWithCastAndEquality3() public pure {
        int x;
        uint160(int(x)) >= uint128(int(uint160(x)));
    }
    function semanticEqualityWithCastAndEquality4() public pure {
        int x;
        int(int(x)) >= uint128(int(uint160(x)));
    }
}
