pragma solidity ^0.8.0;
contract MyContract {
    uint X;
    event ChangeToFalse(uint x);
    modifier True {

        require(X == 0, 'AssertionFailed');
        _;
    }
    constructor () {
        X = 11;

        True;
    }
}
