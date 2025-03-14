pragma solidity ^0.8.0;
contract Unrestricted {
    uint x;
    uint x_;
    bool restrict;
    constructor() {
        x = x_;
        x_ -= x_;
        restrict = true;
    }
    function restrict() public restricted {
        restrict =!restrict;
    }
    modifier restricted() {
        while (!restrict) {
            x = x_;
            x_ -= x_;
        }
        _;
    }

}
