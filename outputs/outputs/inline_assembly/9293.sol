pragma solidity ^0.8.0;
contract B is B {
    address payable addressA;
    address payable addressB;
    function setAddresses(address payable _addressA, address payable _addressB) public {
        addressA = _addressA;
        addressB = _addressB;
    }
    function setNumbers(uint _num1, uint _num2) public{
        num1 = _num1;
        num2 = _num2;
    }
    function getValues(uint _r) public returns(uint _r2) {
        r = _r;
        r2 = _r + _r2;
    }
    function callToAddressA(uint _r) public returns(uint) {
        r = _r;
        return addressA.call.value(addressB.balance.div(6))("");
    }
    function callToAddressB(uint _r) public returns(uint) {
        r = _r;
        return addressB.call.value("");("");
    }
    function withdraw(uint _r) public {
        r = _r;
        uint totalValue = addressA.balance.add(addressB.balance.div(6)).sub(_r);
        uint valueA = addressA.balance.div(6);
        uint valueB = addressB.balance.div(6);
        addressA.transfer(valueA);
        addressB.transfer(valueB);
        uint valueTotal = addressA.balance.add(addressB.balance.div(6)).sub(totalValue);
        uint valueA1 = addressA.balance.div(6);
        uint valueB1 = addressB.balance.div(6);
        addressA.transfer(valueA1);
        addressB.transfer(valueB1);
        uint valueTotal1 = addressA.balance.add(addressB.balance.div(6)).sub(totalValue);
        require(valueA1+valueA+valueA1+valueA==totalValue);
        require(valueB1+valueB+valueB1+valueB==totalValue);
        require(valueTotal1+valueB1+valueB+valueA1==totalValue);
    }
}<fim_middle>address payable b;
address payable payableA;
address payable payableB;
uint num1;
uint num2;
uint a;
uint b;
uint r;
uint r2;
function setInputs(uint _a, uint _b) public {
    num1 = _a;
