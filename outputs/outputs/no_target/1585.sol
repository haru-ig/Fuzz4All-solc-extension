pragma solidity ^0.8.0;
contract Semantic0003 {
    function equal() public pure {
        uint x;
        x > 0;
        uint i = x;
        i >= x;
    }
    function equal2() public pure {
        uint256 x;
        x > 0;
        uint i = x;
        i >= x;
    }
}
