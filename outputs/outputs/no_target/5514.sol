pragma solidity ^0.8.0;
contract O {
    uint public x;
    mapping(uint=>uint) public y;
    function f() public {
        uint a;
        a++;
        a--;
        a = a+a;
        a = a-a;
        a = a<<a;
        a = a>>a;
        a = a|a;
        a = a^a;
        a = 1 ^0;
        a = 1 ^-1;
        a = -(1-a);
        a = -(1-(1+a));
        a = (1/(1+a));
    }
}
contract O {
    uint public x;
    mapping(uint=>uint) public y;
    function f() public {
        uint a;
        a = +a;
    }
}
