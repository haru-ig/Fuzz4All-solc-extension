pragma solidity ^0.8.0;
contract WorseCase5 {
    function worseCase(uint x) public pure returns (uint) {
        x = x / 1;
        x = x + 1;
        return (x);
    }
}
