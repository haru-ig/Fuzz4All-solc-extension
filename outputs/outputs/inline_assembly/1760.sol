pragma solidity ^0.8.0;
contract Example{
    uint x;
    uint y;
    uint f;
    uint g;

    constructor(){
        x = 2;
        y = 3;
        f = 4;
        g = 5;
    }

    function fizzBuzz(uint x) public view returns(bytes32, uint fizz, uint buzz, uint fizzBuzz){
        if(x % 3 == 0) fizz += 1;
        if(x % 5 == 0) buzz += 1;
        fizzBuzz = fizz == 0 && buzz == 0? 0 : 2;
        return bytes32(uint64(fizz) | uint64(buzz) * 10**18 + uint64(2)), f, buzz, fizzBuzz;
    }
    uint mod(uint numerator, uint denominator) public view returns(uint){
        return numerator % denominator;
    }
}
