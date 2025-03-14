pragma solidity ^0.8.0;
contract Duplicated {
    modifier dup() {
        Log("Duplicated called");
        _;
    }
}
