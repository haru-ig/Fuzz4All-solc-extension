pragma solidity ^0.8.0;
contract Semantic0004 {
    function isEqual(uint128 x) public pure {
        x >> 0;
        uint128(x) + 1;
    }
    function isEqual2(uint256 x) public pure {
        x >> 0;
        uint256(x) + 1;
    }
    function isEqual3(uint256 x) public pure {
        x >> 0;
        uint32(x) + 1;
    }
    function isEqual4() public pure {
        uint256 x;
        x >> 0;
        uint32(x) + 1;
    }
    function isEqual5() public pure {
        uint32 x;
        x >> 0;
        uint32(x) + 1;
        x >> 1;
        x >> 1 + 1;
    }
}
