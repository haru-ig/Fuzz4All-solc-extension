pragma solidity ^0.8.0;
contract ContractMutated {
    uint256 count = 0;
    constructor() {}
    function call() public returns (uint256)
        receive(uint256 paid)
    {
        count += 1;
        return 2;
    }
    receive() public {
        count += 2;
    }
}
