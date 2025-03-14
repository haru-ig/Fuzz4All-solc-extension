pragma solidity ^0.8.0;
contract MultiGeneratorMutated{
    uint constant minValue = 0;
     uint constant increment = 10;
     uint constant maxValue = 99;
    function generateMultiple(uint num1, uint num2) public pure returns(uint sum){
        sum = ( 0 + (num1* minValue*10 + increment) + ( num1* maxValue*155 ) * minValue - maxValue* maxValue* minValue);
        return sum;
    }
    string foo(uint i){
        return "mutated";
    }
}
