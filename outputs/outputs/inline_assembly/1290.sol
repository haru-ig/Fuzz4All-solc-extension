pragma solidity ^0.8.0;
contract Mutant3b
{
    uint256 b = 0;
    constructor() public {
        assert(address(this).balance < b);
        b = 6000000000;
    }
    receive() external payable {}
}
