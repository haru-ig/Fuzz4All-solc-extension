pragma solidity ^0.8.0;
contract Mutator
{
    uint A = 10;
    uint B;
    function increaseA(uint x) public {
        B = B + x;
    }
    function increaseB(uint x) public {
        B = B + x;
    }
    function subtractA(uint x) public {
        A = A - x;
    }
    function subtractB(uint x) public {
        B = B - x;
    }
    function multiplyB(uint x) public {
        B = B * x - x;
    }
    modifier onlyB() {
        require(msg.sender == address(B));
        _;
    }
}
