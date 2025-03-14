pragma solidity ^0.8.0;
contract Mutator17 {
   uint _counter;
   function testMethod(uint a, uint  b) public {
       assembly {
          let testvar := a%4
          let result := 0
          if testvar == 1 {

            if $b % 2 == 1 {

              if $a % 4 == 0 {

                result := add(result, 1)
              }
              if $a % 4 == 1 {
                result := add(result, 2)

              }
              }
            } else {
              if $a % 4 == 1 {
                result := add(result, 2)

              } else {
                if  $b % 2 == 0 {

                      result := result - add(result, 1)
                } else {

                      result := result + add(result, 1)
                }
              }
            }
         }
     }
 }
}

contract Mutator18 {
   uint _counter;
   function testMethod(uint a, uint  b) public {
       assembly {
          let testvar := a%4
          let result := 0
          if $b % 2 == 1 {

              if $a % 4 == 0 {
                result := add(result, 1)
              }
              if $a % 4 == 1 {

                result := add(result, 2)

              }
            } else {

              if $a % 4 == 1
