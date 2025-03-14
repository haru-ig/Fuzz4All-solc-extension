pragma solidity ^0.8.0;
contract MutateExample
{
    function mutate() public pure
    {
        uint minter_balance = 210;
        uint minter_balance_afterwards = 150;
        minter_balance = minter_balance - 1;
        uint minter_balance_beforehand = minter_balance_afterwards;
        minter_balance = minter_balance + minter_balance_beforehand;
    }
}
