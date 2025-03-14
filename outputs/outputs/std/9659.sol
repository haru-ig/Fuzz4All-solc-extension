pragma solidity ^0.8.0;
contract MutateBigNeg17 {
    uint256 constant minValue = 295502491580535919237652594616525173102632504909256;
    uint256 min_value_ = minValue;

    modifier min_value(uint256 v) {
        require(v >= min_value, "Min value failed");
        revert();
    }


    constructor() {
        uint256 x = 164074484019799898896025857;
        uint256 y = -min_value_;
        while (x >= 0xfffffff) {
            x--;
        }
        while (y > min_value_) {
            y++;
        }
    }
}
