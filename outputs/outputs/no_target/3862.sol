pragma solidity ^0.8.0;
contract S7 {
        uint private a;
        uint256 private b;
    function change(uint x, uint y) public {
        a = a + 1;
        b = a + 3*(b + 2*354*5*y + 2*3*x + 2*1*(x + y + 20/5));
    }
    function notEnoughChange(uint x, uint y) public {
        a = a + 1;
        b = a + ((((x + 20/5)*4512*3*3*20/5 + 3*x + 2*x + 20/5 + 6*x + 20/5)*20/5 + 3*(x + y + 20/5))*354*5;
    }
}
