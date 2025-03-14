pragma solidity ^0.8.0;
contract WorseCase1 {
    function worseCase() public pure returns (uint256) {
        uint256 x = 10;
        uint256 b = 0;
        x = x - 0;
        b = b + x;
        b = b * x;
        x = b / x;
        x = x + 1;
        return (x);
    }
}
