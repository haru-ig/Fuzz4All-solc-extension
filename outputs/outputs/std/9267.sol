pragma solidity ^0.8.0;
contract UnaffectedContract
{
    uint8 a;
    function unaffected() public pure {
        a = 0;
    }
}
contract AffectedContract
{
    uint8 a;
    function affected() public pure {
        a = 1;
    }
}
