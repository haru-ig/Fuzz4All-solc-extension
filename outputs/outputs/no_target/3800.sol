pragma solidity ^0.8.0;
contract R3 {
        uint a;
        uint b;
        function seta(uint _x) public {
        a = _x;
        b = _x * b;
    }
    function swap() public returns (uint) {
        a = b;
        b = b*a;
    }
    function get() public view returns (uint) {
        return a + b;
    }
}
contract R4 {
        uint a;
        uint b;
        uint c;
        uint d;
        function seta(uint _x) public {
        a = _x;
        b = _x-a;
        c = b + a;
        d = c + d;
    }
    function _setb(uint _x) public {
        uint t = _x + a;
        c = a;
        a = t;
    }
    function swap() public returns (uint, uint) {
        uint _tmp1 = a;
        uint _tmp2 = b;
        b = c;
        d = c;
        c = _tmp1 + b;
        a = _tmp2 + c;
        return a+d, _tmp2;
    }
    function get() public view returns (uint, uint) {
        return a + b;
    }
}
