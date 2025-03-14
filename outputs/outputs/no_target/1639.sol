pragma solidity ^0.8.0;
contract Semantic0009 {
    function notEqualWithoutCastAndEquality(uint256 x, uint y) public pure {
        require(y >= 128129785 * x);
        x >>= 32;
        x += (-1 - x) * x;
    }
}

pragma solidity >= 0.6.0;
contract Semantic0009 {
    function notEqualWithoutCastAndEquality(uint256 x, uint y) public pure {
        require(y >= 128129785 * x);
        x >>= 32;
        x += (-1 - x) * x;
    }
}

pragma solidity 0.6.0;
contract Semantic0009 {
    function notEqualWithoutCastAndEquality(uint256 x, uint y) public pure {
        require(y >= 128129785 * x);
        x >>= 32;
        x += (-1 - x) * x;
    }
}

pragma solidity >= 0.7.0;
contract Semantic0009 {
    function notEqualWithoutCastAndEquality(uint256 x, uint256 y) public pure {
        require(y >= 128129785 * x);
        x >>= 32;
        x += (-1 - x) * x;
    }
}
contract Semantic0009 {
    function notEqualWithoutCastAndEquality2(uint256 x, int y) public pure {
        require(y >= 128129785 * x);
        x >>= 32;
        x += (-1 - x) * x;
    }
}
contract Semantic0009 {
    function notEqualWithoutCastAndEquality3(uint256 x, uint y) public pure {
        require(y >= 128129785 * x);
        x >>= 32;
        x += (-1 - x) * x;
    }
}
