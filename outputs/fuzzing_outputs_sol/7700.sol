pragma solidity ^0.8.0;
contract EtherFallback
{
    receive() external payable { revert(); }
}
contract Soliditty
{
    function fallback() external {
        throw "fallback() should never be called.";
    }
    function () external payable { revert("Fallback called without payable modifier"); }
    fallback() external payable { revert("Fallback called without payable modifier"); }
    receive() external payable {}
}
