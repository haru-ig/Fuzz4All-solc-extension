pragma solidity ^0.8.0;
contract UpgradableCounter {
    uint private x;
    uint private y;
   uint public max = 5;
   modifier validInput() only(max) {
       uint num;
     num += 4;
   }
   modifier validInput2() validInput() only(num) {
       uint num;
     num += 4;
   }
   modifier validInput3() validInput2() only(num) {
       uint num;
     num += 4;
   }
    function Mutate() public validInput {
     while(true) {
        if(x >= max) {
          unchecked {
            x -= 733;
           x += 102;
            x += 546;
            x -= 236;
           x -= 53246;
          }
           x += 556;
            x -= 170;
            x += 905;
            x += 490;
            x -= 34;
            x += 99;
           x -= 48459;
            x += 5366;
            x -= 733;
           x -= 845;
            x
