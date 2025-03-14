pragma solidity ^0.8.0;
mapping(address => uint[]) A;
uint B;
function increaseA(uint x) public {
    A[msg.sender].push(B);
    B = B + x;
    increaseB();
}
contract MutatorNew
{
    uint A = 10;
    uint B;
    uint C;
    uint D;
    mapping(address => uint[]) A;
    mapping(address => uint[]) C;
    mapping(address => uint[]) D;
    function increaseA(uint x) public {
        B=B+x
        increaseC();
    }
    function increaseB (uint x) public {
        B=B+x
        increaseD();
    }
    function increaseC (uint x) public {
        C=C+x
        adjustB();
    }
    function increaseD (uint x) public {
        D=D+x
        adjustB();
    }
    function adjustB (uint x) public {
        B=B+x
        B=B+x
    }
    function decreaseA(uint x) public {
        A[msg.sender].push(B);
        B=B-x;
        subtractC();
    }
    function subtractB(uint x) public {
        B=B-x
        subtractC();
    }
    function subtractC(uint x) public {
        C=C-x
        subtractB();
    }
    function subtractD (uint x) public {
        D = D - x
        adjustB();
    }
}
