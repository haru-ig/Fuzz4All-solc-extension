pragma solidity ^0.8.0;
contract MutatedABIv3
{

    function fReturnsUint256(uint256 x) public returns (uint256)
    {
        require(x > 0, "cannot divide by zero");
        return x - 49;
    }

    function fReturnsAddress(address x) public returns (address)
    {
        require(x!= address(0));
        return x;
    }

    function fReturnsWithoutExceptions(uint8 x) public pure returns (uint8) {
        require(true);
        return x;
    }
}
