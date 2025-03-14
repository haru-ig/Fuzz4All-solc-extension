pragma solidity ^0.8.0;
contract R1 {
    uint a;
    uint b;
    constructor(uint _x) public {
        a = _x;
        b = _x;
    }
    function seta(uint _x) public {
        uint temp = a;
        a = _x;
        b = b + temp;
    }
    function swapa() public {
        uint temp = a;
        uint numb = b;
        a = b;
        b = numb;
    }
    function swapb() public {
        uint _x = b;
        b = a;
        uint _y = a;
        a = _y;
        a = _x;
    }
    function get() public view returns (uint) {
        uint _numb = b;
        b = (_numb*a) + b;
    }
}
