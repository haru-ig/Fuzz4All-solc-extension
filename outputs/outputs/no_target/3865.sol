pragma solidity ^0.8.0;
contract S7 {
        uint private a;
        uint256 private b;
    function change(uint x) public {
        a = a + 1;
        b = (a + x + x + 4) * a / 4;
    }
    function notEnoughChange(uint x) public {
        a = a + 1;
        b = x + (2*x + (3*(a*b) + 8)/4)/x;
    }
}
