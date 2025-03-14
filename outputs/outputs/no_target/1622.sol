pragma solidity ^0.8.0;
 contract Semantic0008 {
    function notEqualWithoutCastAndEquality(uint256 x, uint160 y) public pure {
        require(y == uint64(uint160(x)));

    }
    function notEqualWithoutCastAndEquality2(uint128 x, uint160 y) public pure {
        require(y == uint64(uint160(x)));
        require(y == uint160(uint256(uint64(uint160(x))))))

    }
    function notEqualWithoutCastAndEquality3(uint256 x, uint160 y) public pure {
        require(y < uint64(uint160(x)))

    }
    function notEqualWithoutCastAndEquality4(uint128 x, uint256 y) public pure {
        require(y < uint256(uint64(uint160(x))))

    }
    function notEqualWithoutCastAndEquality5(uint128 x, uint128 y) public pure {
        require(y < uint256(uint64(uint160(x))))
        require(y < uint160(uint256(uint64(uint160(x)))))

    }
}
