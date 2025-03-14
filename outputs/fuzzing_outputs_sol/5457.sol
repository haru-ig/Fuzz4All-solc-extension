pragma solidity ^0.8.0;
contract successmutablefallback8
{
    receive() external payable {}
}
contract callmutatedfallback8 {
    constructor() public {}
    receive() payable external {}
}
contract constructorcall8 {
    constructor() public {}
}
