pragma solidity ^0.8.0;
contract B {
    uint public a;
    function B () {
        a = 5623333 * 10000003;
    }
}
contract C {
    uint c = 5632100*1420;
    function C () public {
        a = c;
        c++;
        c = c + 1;
        c += 1;
    }
    function D () public {
        c = c + 1;
        c += a;
        c += a;
        a = a + 1;
    }
}
contract D {
    uint f = 100;
    uint g= 200;
    uint h= 50000;
    function() public payable {
        uint payable s = g/f * h/200 + a;
        s.transfer(h);
    }
}
contract E {
    function E () public pure returns (uint) {
        return _int2uint(uint(uint(this) - uint(this)) * uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint64(10)) + 60) + 20) + 2))))) + uint64(3))) + uint64(7))) + uint64(62);
    }

    function _int2uint(int n) public pure returns (uint) {
        if (n < 0) {
            return uint(uint(n) >> uint(256));
        } else {
            return uint(uint(n));
        }
    }
}
