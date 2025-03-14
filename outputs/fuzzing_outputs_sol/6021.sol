pragma solidity ^0.8.0;
contract Caller is ContractWithFallback {
    receive () public pure {
        return;
    }
}
