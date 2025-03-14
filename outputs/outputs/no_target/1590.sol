pragma solidity ^0.8.0;
contract Semantic0003 {
    function equal() public pure {
        uint256 x = 0;
        (x -= x);
        (x < x) & (x < x);
    }
}
