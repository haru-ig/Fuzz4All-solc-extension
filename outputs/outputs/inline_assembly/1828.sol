pragma solidity ^0.8.0;
contract Example{
    uint256 public x;
    constructor() public {
        x = 0;
        if (uint256(bool(bool(bool(this.x == 1) & bool(this.x > 0) & (this.x == 1) & (this.x == 0) & (this.x!= 1) & (this.x!= 0)))))!= 1) {
            x = 1;
        }
        else if (uint256(bool(bool(bool(this.x > 0) & bool(this.x == 0) & bool(this.x!= 1) & bool(this.x!= 0) & (this.x == 0) & (this.x == 1) & (this.x!= 1) & (this.x!= 0))))!= 1) {
            x = 1;
        }
        else if (uint256(bool(bool(bool(this.x!= 0) & bool(this.x == 0) & bool(this.x!= 1) & bool(this.x!= 0) & bool(this.x == 1) & bool(this.x > 0) & (this.x == 1) & (this.x == 0) & (this.x!= 1) & (this.x!= 0)) & (this.x == 0) & (this.x < 0))))!= 1) {
            x = 1;
        }
        else if (uint256(bool(bool(bool(this.x!=
