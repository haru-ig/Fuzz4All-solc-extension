pragma solidity ^0.8.0;
contract Mutators23{
    uint public a;
    uint public b;
    uint public c;
    uint public d;

    constructor(uint f,uint g) public {
        a = f * d + g;
        b = f + g + c + d;
        c = a;
        d = 2;
    }
    function setAtoB() public{
        a = b;
    }
    function getAPlusB() public view returns(uint){
        return a + b;
    }
    function increment() public returns (uint) {
        if(a > d){
            a++;
        }
        return b;
    }
}
