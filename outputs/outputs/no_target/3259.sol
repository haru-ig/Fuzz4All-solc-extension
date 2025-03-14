pragma solidity ^0.8.0;
interface mate
{
    function f(uint, uint) external;
}
contract main
{
    mate g0;
    mate g1;
    address payable g0addr0;
    address payable g1addr0;
    constructor() public payable
    {
        g0 = (mate(0x00000000000000000000000000000000000000000));
        g1 = (mate(0x00000000000000000000000000000000000000000));
    }
}
