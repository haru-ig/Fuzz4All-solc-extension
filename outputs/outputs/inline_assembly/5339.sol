pragma solidity ^0.8.0;
uint constant Init = 1;
function test() public returns (uint) {

    uint AB = (uint) (111 + -11 + (-4 + -4 - int256(-15)) - 15 + -15 + (4 + 4 - 16) / 1 - int256( -15 + (-15)) + 16 + 8 + 19 + 4 - 4 - int256(0 - 225)));
    uint tmp = AB;
    uint count = 0;
    while (tmp!= 0){
      tmp &= tmp - 1;
      AB -= tmp;
      count++;
    }
    return count;
}
