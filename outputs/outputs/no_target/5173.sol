pragma solidity ^0.8.0;
contract SimpleExample4 {
    address[] public g;
    function increment(uint256 _idx) public {
        (uint256 tmp0, uint256 tmp1) = (uint256(g[_idx]) >> uint(0), uint192(g[_idx]));
    }
}
