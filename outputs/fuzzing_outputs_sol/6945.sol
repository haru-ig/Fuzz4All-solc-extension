pragma solidity ^0.8.0;
contract Original {
    constructor(Mutator _mutator) {
        mutator = _mutator;
    }
    Mutator public mutator;
    receive() external payable {
        require(true);
    }
}
