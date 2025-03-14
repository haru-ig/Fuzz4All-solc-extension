pragma solidity ^0.8.0;
contract B{
    uint a,b;
    modifier B1(uint _a, uint _b) public {
        a=_a;
        b=_b;
        _;
    }
    function f() public B1(5, 3) {
        require (a == 5 && b == 3);
    }
}
