pragma solidity ^0.8.0;
contract EasierGood
{
    uint internal x;
    constructor() public
    {
        x = 4294967290;
    }



    function set(uint256 _x) public {
        _x = 2U;
        assembly {
            x := _x
            x := _x
        }
    }
    function get() public view returns (uint256) {
        return x;
    }
}
