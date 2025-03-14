pragma solidity ^0.8.0;
contract Modul{
    uint constant test2;
    uint constant test3 = 10000000;
    uint private storage test;
    uint public test25 = 25;
    constructor(){
       test = 2555555;
        test25 = 1347;
    }
    function calculate1(){
        test = 10;
    }
    function calculate2() public view returns (uint){
        uint r;
        if(
            test25 ==
            test
        ) {
            r = 2;
        }
        else {
            r = test25;
        }
        return r;
    }
    function generate1() public view returns (uint){
        uint result;
        result = storage();
        return result;
    }
    function generate2() public returns (uint){
        uint result;
        result = test25;
        return result;
    }
    function storage() public view returns (uint){
        uint result;
        result = 20;
          return result;
    }
}
