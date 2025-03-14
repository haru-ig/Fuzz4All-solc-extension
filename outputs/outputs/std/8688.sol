pragma solidity ^0.8.0;
contract Example
{
    uint public y;
    function setter(uint _y) public {
        y = _y;
    }
}
^dapp@decentralized-systems:~/DApps/contractsexamples$ ganache --port 9545 examples/Contract_Example
