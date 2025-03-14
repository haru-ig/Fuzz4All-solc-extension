pragma solidity ^0.8.0;
contract NewABIv3
{
    function f() public payable
    {
        require(msg.value > 0, "cannot divide by zero");
        (uint256) (1 + msg.value);
    }
}
