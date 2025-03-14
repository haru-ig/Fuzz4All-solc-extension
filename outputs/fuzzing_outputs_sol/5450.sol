pragma solidity ^0.8.0;
contract failonmutables
{
    constructor() public {}
    receive() external payable {}
}
contract failonconstructor
{
    receive() external payable {}
}
contract failonconstructorcall
{
    constructor() public {}
    receive() external payable {}
}
contract failonmutablecall
{
    receive() external payable {}
    function test() public pure returns (uint256) { return 0; }
}
