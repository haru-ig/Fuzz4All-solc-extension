pragma solidity ^0.8.0;
contract MutantCaller {
    function sum(uint x, uint y){
        sum(sum(uint(x),uint(y)), uint(x + y));
    }
    function main() public{
        sum(30,30);
    }
}
