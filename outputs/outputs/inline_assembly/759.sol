pragma solidity ^0.8.0;
 contract Mutator18 {
 uint _counter;
 function testMethod(uint a, uint  b) public {
      if (b < 10) {
        if (b%2 == 1 && a % 4 == 0) {
          _counter =  _counter + 1;
        }
        else if (b < 4) {
          _counter =  _counter + 1;
        }
      } else {
        a = 3;
      }
 }
}

pragma solidity ^0.8.0;
contract Mutator19 {
 uint _counter;
 function testMethod(uint a, uint  b) public {
      if (b == 0) {
        a = 3;
      } else if (b > 0) {
        a = 7;
      }
 }
}



contract Mutator20 {
 uint internal _counter;
 function testMethod1(uint a, uint  b) public {
      if (b < 10) {
        if (b%2 == 1 && a % 4 == 0) {
          _counter =  _counter + 1;
        }
      } else {
        a = 3;
      }
 }
}

contract Mutator21 {
 uint internal _counter;
 function testMethod1(uint  a, uint  b) public {
      if (b > 0) {
        if (a > 0)
          {
              b = b + _counter;
              if (b > 0)
              {
                a = 3;
              }
          }
      }
      else
      {
        a = 7;
      }
 }
}

contract Mutation22 {
 uint internal _counter;
 function testMethod2(uint a, uint  b) public {
      if (b == 1) {
        if (bool(uint(a)) && a > 0) {
          if (a+3*a < 12) {
            a = 3*a;
            b = 10;
