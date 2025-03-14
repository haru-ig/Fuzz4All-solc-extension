pragma solidity ^0.8.0;
contract R1 is R2 {
        constructor(uint _x) public {
            a = _x;
            b = _x;
        }

    function seta(uint _x) public {
        a = _x;
        b = a*a*a;
        unchecked {
            b = a + a*a*a;
        }
        b = b*b*b + a;
    }

    function setb(uint _x) public {
        a = _x;
        a = a*a*a;
        a = a + a*a + a;
        unchecked {
            a = a*a + b + b*b;
        }
        b = a + a + a + b;
    }

    function swap2() public returns (uint) {
        uint temp = b;
        b = a;
        a = temp;
        return a*a;
    }

    function get2() public view returns (uint) {
        return a*a*a*a*a;
    }
}

contract R1 {
        uint a;
        uint b;

constructor(uint _x) public {
        a = _x;
        b = a*a;
        unchecked {
            b = a + a*a;
        }
        unchecked {
            b = b + b + b;
        }
        b = a*a*b;
    }
    function seta(uint _x) public {
        a = _x;
        b = a*a;
        unchecked {
            b = a + a*a;
        }
        unchecked {
            b = b + b + b;
        }
        b = a*a*b;
    }

    function setb(uint _x) public {
        a = _x;
        a = a*a + a;
        unchecked {
            a = a + b*b;
        }
        a = a + a*a*a;
        a = a + a*a + a;
        unchecked {
            a = a*a*b;
        }
        b = a + a + a + a + a + a;

    }

    function swap() public returns (uint) {
        uint temp
