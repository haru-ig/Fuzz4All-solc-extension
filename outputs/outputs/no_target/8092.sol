pragma solidity ^0.8.0;
contract Restricted {
    function restricted() {
        uint x = 0;
        uint x_;
        x = 0;
        x_ = x;
        x_ += x;
    }
}
