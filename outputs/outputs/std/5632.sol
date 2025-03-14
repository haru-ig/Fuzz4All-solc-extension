pragma solidity ^0.8.0;
contract M5{
    M255 public d;
    uint public value;
    constructor(address _d) M255(_d){
        value = address(this).balance + msg.value;
    }
    function changeValue(uint _z) public{
        d.multiply(_z).changeValue(value-_z);
    }
}
