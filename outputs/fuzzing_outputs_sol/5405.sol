pragma solidity ^0.8.0;
contract simplefallback3
{
    function fallback() public pure
    {
        require(msg.value == 0);
    }
}
contract Caller
{
    uint a;

    function Caller() public {
        a = 5;
        require(a == 5);
    }

    function executeWithEther() public {
        require(msg.value == 0);
        require(a == 6);
    }

    function executeWithZeroValueEther() public {
        require(msg.value == 0);
        require(a == 6);

        a = 7;
    }
}
