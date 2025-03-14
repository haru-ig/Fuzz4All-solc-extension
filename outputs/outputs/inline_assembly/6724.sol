pragma solidity ^0.8.0;
contract MixedContactsExample499 is MixedContactsExample500{
    uint56 x;

    function doSomething() public returns (uint64) {
        a *= 14;
        bool x3 = x % 3 == 0;
        a *= 84;
        a += c + b;
    }
}
/* In the next generation of contracts, you can create an account that interacts with the compiled bytecode of a previous version of the contract.

For the first MixedContactsExample498 smart contract, however, you have found yourself wanting to get information from a smart contract in a manner that is innocuous, but doesn't actually work (though you do make a big jump out of there!): you want to give access to the value that is stored in an Ether contract.

Do as I mentioned in your MixedContactsExample498 program: create an externally owned contract that has read-only access to some shared data. Then, after you have created and tested the new contract, create an account with it, and try to call the new contract's "someOperation" function.

In the code that follows, you have already created a smart contract and an account that interacts with it. Do the following:

- Create an externally hosted contract that has access to some shared data so that it can get information from the previous contract.
- Create and deploy an account that interacts with the new contract.
- Call the new contract's "someOperation" function from the account, and check the return value.
- Create and deploy an account that interacts with the previous contract.
- Call the previous contract's "someOperation" function from the account, and check the return value.
- Test the transaction that takes both contracts to the same account
- Test the transaction that takes both contracts to an externally-hosted contract
- Test the transaction that takes an externally-hosted contract to a contract

Once you are confident that calling the right contract, and calling the intended function, will return what is desired, you are ready to proceed and commit your program to Git:

- Clone the
