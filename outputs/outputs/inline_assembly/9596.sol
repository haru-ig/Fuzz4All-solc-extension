pragma solidity ^0.8.0;
contract YulContract {
    uint internal contractCounter = 1;
    address contractAddress;
    function subContract() internal returns (uint) {
        contractCounter -= 1;
        contractAddress = address(new YulContract());
        emit CounterMod(contractCounter, contractAddress);
        return contractCounter;
    }
}
contract CounterMod {
    uint public counter;
    address public contractAddress;
    constructor(uint _counter, address _contractAddress) CounterMod(uint _counter, address _contractAddress) {
        counter = _counter;
        contractAddress = _contractAddress;
    }
}
