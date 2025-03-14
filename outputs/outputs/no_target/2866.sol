pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract immutable {
    bool _immutable;
    constructor () {
        _immutable = true;
    }
    modifier immutable() {
        require(_immutable, "contract immutable");
        _;
    }
}
