pragma solidity ^0.8.0;
contract UpgradableCounter {
    uint internal x;
    uint internal y;
    uint public constant max = 5;
    constructor(uint a) public {
        x = a;
        y = a;
    }
    function Mutate() public {
     uint oldx = x;
     uint oldy = y;
     while(true) {
       oldy = oldx;
       oldx = oldx + 1;
       oldx = (oldx)/2;
       if(oldx >= max) {
         oldx = (oldx - 90) / 70 * 4;
         oldx = oldx + 60;
       }
       uint oldy = oldy;
       uint oldy = (oldy)/2;
       oldy = 7 * oldy * (oldy - 21) + oldx * 20;
       oldy = oldy - 500;
       oldy = (oldy + 222) / 342;
       if(oldy <= oldx) {
       unchecked {
         oldy = oldx + oldy;
       }
       uint oldx = oldx;
       return
