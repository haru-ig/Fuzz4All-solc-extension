pragma solidity ^0.8.0;
contract Caller
{
Complex complex;
    function main() public {
        uint256 a = complex.mutate();
    }
}
