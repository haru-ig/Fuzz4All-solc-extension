pragma solidity ^0.8.0;
interface IExample {
    function setCheckFor(address c) external;
    function isValid() external view returns (bool);
    function hasPassed() external view returns (bool);
}
contract MainExample is Example{
    constructor(){
        payable self = payable(address(this));
        setCheckFor(self);
    }


    function () external payable {}


    function () external payable payable{}


    function () public{

        super.setCheckFor(Example.addr);
    }
}
