pragma solidity ^0.8.0;
contract test{
    uint internal counter = 0;
    constructor(){
        this.counter += 4;
    }
    function fun() external {
        counter++;
        this.counter_2++;
        this.counter_2++;
    }
    function getCounter() public view returns (uint){
        return this.counter;
    }
    function getCounterInternal() internal view returns (uint){
        return this.counter;
    }
    function getCounterAsCaller() view returns (uint){
        return this.counter;
    }
    function getCounterCall() internal returns (uint){
        return this.counter;
    }
    function getCounter2AsCaller() view returns (uint){
        return this.counter_2;
    }
    function get
