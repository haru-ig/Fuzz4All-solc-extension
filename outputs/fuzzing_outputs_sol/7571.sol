pragma solidity ^0.8.0;
contract MutedFallback
{
    receive() external payable {
    }
    function fallback() public payable
    {
        address(0x0).call.value(0.001 ether)("");
    }
}

pragma solidity ^0.8.0;
contract MutedFallback
{
    receive() external payable {
    }
    function fallback() public payable external
    {
        selfdestruct(address(this).balance);
    }
}
