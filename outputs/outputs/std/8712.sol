pragma solidity ^0.8.0;
contract Example
{
    address constant PUBLIC_ADDRESS = 0xDEADBEEF00000000000000000000000000000000000000;
    string constant SECRET_VALUE = "DEADBEEF";
    function add() public returns (uint)
    {
        if (SECRET_VALUE!= "DEADBEEF") return 0;
        uint x = PUBLIC_ADDRESS;
        return x + 1;
    }
}
