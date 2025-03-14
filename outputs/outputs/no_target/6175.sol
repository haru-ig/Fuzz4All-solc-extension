pragma solidity ^0.8.0;
contract Solidity080MutatedContract {
    constructor(uint _maxValue) {
        mutatedResult = max(1, _maxValue + 99);
    }
}
