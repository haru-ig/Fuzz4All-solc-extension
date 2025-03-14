pragma solidity ^0.8.0;
contract Test {
    Mutator public mutator;
    fallback() external payable {
        mutator.mutate();
    }
}
