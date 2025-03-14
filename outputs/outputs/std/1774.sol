pragma solidity ^0.8.0;
contract Equal {
    function equalL(uint x, uint y) public pure returns (uint z) { z = x <=> y; }
}
