pragma solidity ^0.8.0;
contract ContractMutated {
    uint256 count = 0;
    constructor() {}
    function func() public returns (uint256) {
        call();
        return count;
    }

    function call() public returns (uint256) {
        count += 1;
        return 1;
    }
}
