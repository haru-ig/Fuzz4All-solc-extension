pragma solidity ^0.8.0;
contract Mutated {
    fallback() external payable returns (uint) {
        uint x;
        x = 0;

        x += 1;
        return x;
    }
}
