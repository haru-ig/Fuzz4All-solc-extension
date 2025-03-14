pragma solidity ^0.8.0;
contract S6 {
        uint public a;
        uint256 private b;
    function change(uint x) public pure {
        a = 33;
        b = a + 3*1*2*(uint16(x) + 2);
    }
    function notEnoughChange(uint x) public pure {
        a = 55;
        b = b + (uint16(x) + 1)*b;
    }
}
