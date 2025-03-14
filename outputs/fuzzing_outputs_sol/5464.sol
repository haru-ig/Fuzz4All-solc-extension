pragma solidity ^0.8.0;
contract successmutablefallback81
{
    receive() external payable {}
}
contract callmutatedfallback
{
    constructor() public {}
    receive() payable external {}
}
contract mutatedconstructorcall81
{
    constructor() public {}
}
contract mutatedconstructorcall18
{
    constructor() public {}
    receive() external payable {}
}
contract constructorcall81
{
    constructor() public {}
    receive() payable external {}
}
