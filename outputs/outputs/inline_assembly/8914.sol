pragma solidity ^0.8.0;




contract EasierBad
{
    uint internal x;
    constructor() public {
        x = 4294967290;
    }
    function test() public {
        x >>= (256 - { x > 4294967290 } >>= 8);
    }
    function set(uint256 _x) public {
        x = _x;
    }
}
