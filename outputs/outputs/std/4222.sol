pragma solidity ^0.8.0;
contract Test{
    uint a;

    constructor(uint b) public {
        a = b;
    }

    function modify(){
        a*=2;
    }
    function test(uint32 _x) public {
        uint32 x = _x;
        a = (x>10)? 10 : uint32(a+2*x*x);
    }

    function Test() public {
    }
}
