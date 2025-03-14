pragma solidity ^0.8.0;
contract YulContract {
    uint internal contractCounter = 0;
    function addContract() internal returns (uint) {
        contractCounter += 1;
        return contractCounter;
    }
}
