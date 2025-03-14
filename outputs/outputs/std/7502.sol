pragma solidity ^0.8.0;
contract Mutate2 {
    function mutate(uint256 a) public pure returns (uint256, uint256) {
        (a,, ) = (
            a + 10, uint256(int256(a) + 42), int8(-22)
        );
        (uint256 c, uint256 d) = (a + b, a - b);
        return (c, d);
    }
    uint256 a;
    uint256 b;

    constructor(uint256 x) {
        (a,, ) = (x, uint256(int256(x) + 42), int8(-22));
        (b, b) = (x + a, x - a);
    }
}
