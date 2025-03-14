pragma solidity ^0.8.0;
contract successmutablefallback82
{
    receive() external payable {}
}
contract mutatedconstructorcall82
{
    constructor() public {}
    receive() payable {}
}
contract mutatedconstructorcall18
{
    constructor() public {}
    receive() external payable {}
}
contract constructorcall82
{
    constructor() public {}
    receive() payable external {}
}
