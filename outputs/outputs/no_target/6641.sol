pragma solidity ^0.8.0;
contract SafeMath8 {
    function min(uint x, uint y) internal pure returns (uint z) {
        require(x <= y);
        return x;
    }
}
