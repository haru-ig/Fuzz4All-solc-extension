pragma solidity ^0.8.0;
 contract Semantic0007 {
    function notEqualWithCastAndEquality2(uint160 _y) public pure {
        _y >= uint64(uint128(_y));
    }
}
contract Semantic0008 {
    function notEqualWithCastAndEquality3(uint160 _y) public pure {
        _y >= uint256(uint128(_y));
    }
}
contract Semantic0009 {
    function notEqualWithCastAndEquality4(uint160 _y) public pure {
        _y >= uint256(uint256(_y));
    }
}
contract Semantic0010 {

    function notEqualWithCastAndEquality5(uint160 _y) public pure {
        _y >= uint256(uint256(_y) + 1);
    }
}
