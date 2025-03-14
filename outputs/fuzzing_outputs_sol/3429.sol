pragma solidity ^0.8.0;
contract MyMutantCaller is BogusCaller {
    receive () payable {
    }
    receive () public pure {
    }
}
