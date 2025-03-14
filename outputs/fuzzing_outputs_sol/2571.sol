pragma solidity ^0.8.0;
contract PristineFallback
{
    uint public fallbackValue;

    receive() external payable {}
    constructor() {}

    fallback() external payable {}
}
