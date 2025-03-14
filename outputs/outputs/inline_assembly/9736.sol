pragma solidity ^0.8.0;
contract OptimisticYulContract {
    uint internal z;
    uint const victim = 2;
    uint[] zarray;
    uint x;
 function f(uint[] memory) public returns (uint[] memory) {
        zarray = input;
        uint t = sum(x);
    uint t2;
        if (false) {
            t2 = 2;
          } else {
            zarray[10] = 4;
            t2 = 3;
          }
        x = x + t;
        t = 0x20;
    uint t3;
        if (false) {
            t3 = 4;
          } else {
            t2 = 3;
          }
        x = x + t + t2;
        x = x + t + t3;
        x = x + t + t2;
        x = x + t + t2;
        x = x + t + t2;
    }
 function sum(uint t) public returns (uint) {
        if (false) {
            return 1;
          } else {
            return 0.01;
          }
 }

 function g(uint z) public returns (uint) {
        uint y = z * 10;
        x = 5 / y;
        return x;
    }
}
contract YulContractIsGoodEnough {
    uint internal z = 1;
    uint x;

 function f(uint[] memory input) public returns (uint) {
        z = input[input.length - 1] + 1;
        return sum(x);
    }

 function sum(uint t) public returns (uint) {
        if (false) {
            return 0x1;
          } else {
            return 0;
          }
 }
 function g() public returns (uint) {
        bool trueVar = false;
        uint[] memory input = [];
        input.push(6);
        uint output;
        if (trueVar) {
            output = g(input[0]);
        } else {
            output = sum(input[0] - input[1]);
        }
    if (trueVar && trueVar) {
        if (trueVar) {
            output = sum(output);
        } else {
            if (!trueVar) {
                input.push(
