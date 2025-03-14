pragma solidity ^0.8.0;
contract SolveModul
{
    uint256 constant div100 = 1e18 / 1e7;
    uint256 constant div10 = 1e18 / 1e6;
    uint256 constant div1 = 1e18 / 1e3;
    uint256 constant div10e6 = 1e18 / (10 ** (6));
    uint256 div;

    function test(uint256 x) public pure returns (uint256) {
        div = x / div10;
        return div * 100 + div;
        function additives() public pure returns (uint) {
            return uint(div) + 1;
        };
    }
    function test2() public pure returns (uint) {
        div = div100;
        return div + 100;
    }
}
