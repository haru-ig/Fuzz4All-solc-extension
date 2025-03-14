pragma solidity ^0.8.0;
import "./InvalidFallback.sol";
contract ValidContractWithFallback {
    uint256 x;
    constructor() {

        x = 1;
    }
    receive() external payable {
        x = 256;
    }
}
