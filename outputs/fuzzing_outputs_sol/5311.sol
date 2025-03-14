pragma solidity ^0.8.0;
contract MutatedFallbackFactory
{
    function MutatedA() external
    {

    }

    function MutatedB() public returns(address)
    {

        return address(this);
    }

    function MutatedC() public
    {

        (address _y,) = address(this).call{value: 0.1 ether}("");
    }
}
