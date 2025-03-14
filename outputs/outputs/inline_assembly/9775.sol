pragma solidity ^0.8.0;
contract MutatedYulContract12{
    uint internal contractCounter2;
    uint constant c = 0x00;
    function foo() public {
    for(uint i=0; i < 1000; i++){
      if (contractCounter2 > 0) {
        contractCounter2--;
      } else {
        contractCounter2 = 33;
      }
      if (contractCounter2 == 0) {
        contractCounter2 = 142;
      } else {
        contractCounter2 = contractCounter2 + 3;}
    }
      }
    }
}
