pragma solidity ^0.8.0;
contract Mutant
{
    constructor() public {
        uint256 value = 5;
        assembly {
            value := 27
        }
        assert(5 == value);
    }

    receive() external payable {}
}
