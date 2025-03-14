pragma solidity ^0.8.0;
contract fallbackfunc
{
    function fallback() public pure {
        uint x = 12;
        if (x == 15) {
            x = 18;
        } else {
            revert("FAIL1");
        }
        revert("FAIL2");
    }
}
contract fallbackfunc2
{
    uint public x;
    function fallback() public pure {
        x = 12;
        if (x == 15) {
            x = 18;
        } else {
            revert("FAIL1");
        }
        revert("FAIL2");
    }
}
