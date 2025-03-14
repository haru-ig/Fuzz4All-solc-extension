pragma solidity ^0.8.0;
contract semanticallyequivalent32
{
    uint public x__;
    uint public y__;
    uint public z__;
    uint public y;
    uint public z;
    modifier x_less_than_50_than_z_less_than_100_but_not_y_less_than_100(){
        require(x<50 && z<100);
        if(y < 100) {
            _;
        }
    }

    constructor(){
          x__ = 50;
          y__ = 100;
    }
    function test32() public payable x_less_than_50_than_z_less_than_100_but_not_y_less_than_100  {
        while (x__!= 26 && y__ < 100) {
            y__++;
        }
        z__ = 10;
    }
}
