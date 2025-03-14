pragma solidity ^0.8.0;
contract S6 {
        uint private a;
        uint256 private b;
    function change(uint x) public {
        a = a + 1;
        b = a + 3*1*2*(x + 2);
    }
    function notEnoughChange(uint x) public {
        a = a + 1;
        b = b + (x + 1)*b;
    }

}
