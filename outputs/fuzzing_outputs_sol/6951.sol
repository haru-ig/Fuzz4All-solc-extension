pragma solidity ^0.8.0;
contract FallbackMutator {
    uint public a_;
    uint public b_;
    address public m_ = 0x0000;
    uint public immutable constant N = 10;
    uint public state_ = 0;
    uint mut public minedId;
    constructor() {
        minedId = new;
        a_ = 254;
        b_ = 93;
        state_ = 0;
    }
    receive() external payable {
        if (state_ == 0 || state_ == 2) {
            state_ = 2;
        } else {
            state_ = 2;
        }
        minedId++;
    }
    function mutate() external {
        if (state_ == 2) {
            state_ = 4;
            a_ = 136;
        }
        require(state_ == 0);
    }
}
