pragma solidity ^0.8.0;
library B2
{
	function f() public payable returns (uint256);
}
contract NewVersionOfDifferent
{
    address payable sender;
    uint z;
    uint x;
    modifier isLessYet
    {
        if(x <= 3)
            revert();
        _;
    }
    constructor() { x = 6; }
    function doIt() public payable returns (uint, uint256) {
        uint id1 = (1 << 21) * 2 - 1;
        uint id2 = 21;
        B2.f().public();
        B2.f().public();
        id1 &= ((1 << 21) & x) * 2;
        id2 = id1 >> (x >> 21);
        assert((id1 == 3197 && id2 == 1));
    }
}
