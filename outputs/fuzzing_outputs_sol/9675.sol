pragma solidity ^0.8.0;
contract CallModification {
    receive() external payable returns (uint) {
        return 1;
    }
}
