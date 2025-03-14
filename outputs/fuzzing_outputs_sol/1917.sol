pragma solidity ^0.8.0;
function test(uint256 g1, uint256 g2) public pure returns(uint256) {
    return g1 + g2;
}
contract TestFallback {
    uint256 constant g1 = 1;
    uint256 constant g2 = 2;
    uint256 constant expected = 3;

    function test() public pure returns(uint256) {
        return test(g1, g2);
    }
}
