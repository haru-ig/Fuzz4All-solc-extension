pragma solidity ^0.8.0;
contract MutatedStorage {
    uint a_;
    mapping(uint => uint) public a;
    constructor(uint a) {
        this.a_[0]=a;
    }
    function update() {
        this.a_[0]=this.a_[1];
    }
}
