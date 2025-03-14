pragma solidity ^0.8.0;
contract Mutator {

    modifier payable {
        _;
    }
}
contract Reverter {

    constructor () {
        _;
    }
}
