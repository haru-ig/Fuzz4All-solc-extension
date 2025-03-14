pragma solidity ^0.8.0;
contract fallback
{
    function fallback() public pure payable {}
}
contract Caller
{
    fallback _fallback;
    function () external payable {}
    function fallback() public pure payable {
        _fallback();
        return;
    }
}
