pragma solidity ^0.8.0;
contract WorseCase3 {
    function worseCase() public pure returns (uint) {
        uint x = 10;
        uint256 b = 2;
        x = x - 1;
        b = b + x;
        b = b + 1;
        x = b / 1;
        x = x+2;
        return (x);
    }
}
