pragma solidity ^0.8.0;
contract badmapmap
{
    mapping(uint8 => uint8) map;
    function f(uint8 key0, uint8 key1) public
    {
        map[key0] = key1;
    }
    function g() public
    {
        f(32, 32);
    }
}


contract transferEther
{
    constructor(address recipient_) public { }
    function transfer(address to_, uint256 amount_) public returns (bool) { }
}
