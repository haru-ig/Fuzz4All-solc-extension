pragma solidity ^0.8.0;
contract MutationEquivalence
{
    function equivalent() public
    {
        uint minter_balance = 210;
        uint minter_balance_afterwards = 150;
        minter_balance = minter_balance + 2;
        uint minter_balance_beforehand = minter_balance_afterwards;
        minter_balance = minter_balance - minter_balance_beforehand;
        minter_balance = minter_balance + minter_balance - 2 * minter_balance_beforehand;
        minter_balance = minter_balance + minter_balance + 2 * minter_balance - 8 * minter_balance_beforehand;
        minter_balance = minter_balance + 2 * minter_balance;
        minter_balance = minter_balance + 1;
    }
}
