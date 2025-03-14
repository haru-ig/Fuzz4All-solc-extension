pragma solidity ^0.8.0;
contract R4 {
        uint a;
        uint b;
    constructor(uint _x) public {
        a = _x;
        b = _x * b * a * a;
    }
    function swap() public {
        uint temp = a;
        a = b;
        b = temp;
    }
    function get() public view returns (uint) {
        return a + b - a*a;
    }
}

contract R4 {
        uint x;
        uint y;
                uint z;
                uint[2][10] arr;
    constructor(uint _x, uint _y) public {
        uint _z = _y*x;
        uint[2][10] memory _arr;
        _arr[0][1] = _z;
    }
    function swap0() public {
        uint temp0 = x;
        x = y;
        y = temp0;
    }
    function swap1() public {
        uint temp = x;
        x = y;
        y = temp*temp;
    }
    function swap2() public {
        uint temp = x;
        x = y;
        y = temp + x + x;
    }
    function swap3() public {
        uint z = x;
        uint y;
        while (z!= 0) {
            y = z%x;
            x = z;
            z = y;
        }
        uint temp0 = x;
        uint temp1 = x;
        x = y;
        y = temp0;
        x = temp1;
    }
        uint get() public view returns (uint) {
        return x + y;
    }
}
contract R4 {
        uint a;
        uint public y; public function f() public {
        y = a;
        a = 2*x;
    }
        uint get() public view returns (uint) {
        return a + 2*x + 2*y + 2*y;
    }
    uint x;
}

contract R4 {
        uint a;
        uint public y; public function f() public {
        y = a;
    }
        uint get() public view returns (uint) {
        return a + 2*x;
    }
        uint x;
}
contract R4 {
        uint public a; public function f() public {
        a = 2*x;
        x = a;
    }
        uint get() public view returns (uint) {
        return a + x;
    }
        uint x;
