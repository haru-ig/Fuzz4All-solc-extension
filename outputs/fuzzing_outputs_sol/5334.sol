pragma solidity ^0.8.0;
library Caller7Lib
{
        function c(uint64 x, mapmap memory f, uint256 z) public pure returns (uint256) {
                return x ^ f[z];
        }
}
contract Caller7
{
        uint public a;

        Caller7 public caller;

        event E(uint x);

        address payable fallback(uint);

        constructor(Caller7 memory _caller) {
                a = 25;
                caller = _caller;
        }

        function c(uint z) external {
                caller.c(z);
        }

        function d() external {
                E(z);
        }
}
