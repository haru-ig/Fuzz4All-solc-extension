pragma solidity ^0.8.0;
contract MutateBigNeg2 {
    address payables owner;

    constructor(address payable owner_) {
        owner = owner_;
    }


    function setXValue(uint z) public returns(uint) {
        z = uint(-z);
        owner.transfer(z);
        return z;
    }

    function getXValue() public view returns (uint) {
        return x;
    }
}
