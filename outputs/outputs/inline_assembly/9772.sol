pragma solidity ^0.8.0;
contract MutatedYulContract1{
    bool internal contractCounter1;
    uint constant c1 = 00;
    function divideByTwo(uint z1) public {
    if (z1 == 2) {
      if (z1 > 0) {
        z1 /= 2;
      }
      else {
        z1 = z1 + 1;
      }
    } else {
       z1=z1/2;
    }
       return;
    }
}

pragma solidity ^0.8.0;
contract MutatedYulContract2{
    bool internal contractCounter2;
    uint constant c2 = 0x00;
    function divideByTwo(uint128 z2) public {
      if (z2 == 2) {
        if (z2 > 0) {
          z2 /= 2;
        }
        else {
          z2 = z2 + 1;
        }
      } else {
        z2=z2/2;
      }
        return;
    }
}
