pragma solidity ^0.8.0;
contract Semantic0006 {
    function notEqualWithCastAndEquality() public pure {
        uint32 x;
        uint160(uint32(x)) >= uint64(uint160(x));
    }
}

pragma solidity ^0.8.0;
contract Semantic0007 {
    function logx() public pure {
       log(2);
        log10(2);
        log2(2);
        logx3();
    }
    function logx3() public pure {
        log2(2);
        logx4();
    }
    function notEqualWithCastAndEquality() public pure {
        uint32 x;
        uint160(uint32(x)) >= uint64(uint160(x));
    }
    function notEqualWithCastAndEquality2() public pure {
        uint128 x;
        uint160(uint128(x)) >= uint64(uint160(x));
    }
    function notEqualWithCastAndEquality3() public pure {
        uint64 x;
        uint160(uint64(x)) >= uint128(uint160(x));
    }
    function notEqualWithCastAndEquality4() public pure {
        uint64 x;
        uint256(uint128(x)) >= uint128(uint160(x));
    }
}
