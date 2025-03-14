pragma solidity ^0.8.0;
contract mutation0b64m2
{
    struct Struct
    {
        mapping(uint256 => uint256) m;
    }

    constructor() public
    {
        Struct storage s = Struct();
        s.m[1] = 1;
        s.m[2] = 1;
    }
}
