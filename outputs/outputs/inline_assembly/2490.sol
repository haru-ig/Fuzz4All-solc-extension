pragma solidity ^0.8.0;
contract Comp1 {
    uint c = 1;
    function addThree(uint _a) public {
        c += _a + 3;
    }
}
contract Comp {
    uint a;
    constructor(uint _a) public{
        a=_a;
    }
    function addThree(uint _a) public {
        a += 3;
    }
}

/** https:
The compilation process can contain many stages, and it is critical that it be understood in general terms for each stage. If something is left unspecified, it means that a user is expected to perform a function which can give incorrect results in the future. The compilation process is meant for code that complies with the contract's specification, and therefore allows for higher quality contracts. The compilation process needs to be performed by a human.
There are many tools for compiling smart contracts in IDEs, including Visual Studio Code, Remix, Web3JS, Truffle, and Go-EVM. However, smart contracts can be compiled by Truffle, and smart contracts can be compiled and deployed by any third-party smart contract deploy gateway like Remix, Remix GUI, MetaMask, MetaDeploy, or MetaMask Extension, which runs it on the Ethereum blockchain.
