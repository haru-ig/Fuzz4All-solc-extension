pragma solidity ^0.8.0;
contract MutateExample
{
    function mutate() public
    {
        uint minter_balance;
        uint minter_balance_after;
        address addr1;

        minter_balance = minter_balance - 1;
        minter_balance_after = minter_balance + minter_balance_after;
        addr1 = msg.sender;
        (, minter_balance) = addr1.call{value: minter_balance } (new uint(minter_balance_after));
    }
}
