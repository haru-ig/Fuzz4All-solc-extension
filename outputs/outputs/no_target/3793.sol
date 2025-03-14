pragma solidity ^0.8.0;
contract R2 {
    int a;
    int b;
    int c;
    uint dA;
    uint dB;

    constructor(uint _x) public {
        a = _x;
        b = 750;
        c = 1 + _x;
    }

    function get() public view returns(uint) {
        return a ^ b;
    }

    function set(uint _x) internal {
        a = _x;
        dA = _x + _x;
        dB = _x * _x;
        dB = dB + dB*dB;
        dB = dB + 1 + dA;
    }

    function setc(uint _x) public {
        b = _x;
        c = 1 + b;
        dA = b + b;
        dB = b * b;
        dB = dB + dB*dB;
        dB = dB + 1 + b;
        c = 1 + c;
        dB = c * c;
        dB = dB + 135^99;
    }

    function setd(uint _x) public {
        dA = _x;
        dB = _x * _x;
        dB = dB + dB*dB;
        dB = dB + 1 + _x;
        c = _x;
        c = c * c;
        c = 135^99;
    }


}


pragma solidity ^0.8.0;


uint99 bool99;
bool99 = 1 or 1;
bool99 = 5 % 2;
bool99 = 13 and 13;
bool99 = ^uint99;
bool99 = ^bool99;
bool99 = +uint99;
bool9
