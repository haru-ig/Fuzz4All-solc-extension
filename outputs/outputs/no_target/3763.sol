pragma solidity ^0.8.0;
contract E3 {
    uint256 d;
    uint256 e;
    uint256 a;
    function h() public {
        a = ~a&1;
        d = ~d&2;
        e = ~e&3;
    }
}
contract e {
    function f(E2 _e2, E3 _e3) public view returns (bool) {
       _e2 = _e2;
       _e3 = _e3;
       return a >= b && c <= d;
    }

    function g(uint256 _a) public view returns(bool) {
       a = ~a&_a;
       return _a <= _b;
    }

    function h(uint256 _d) public view returns(bool) {
       d = ~d&_d;
       return _d >= _e;
    }

    function i(uint256 _e) public view returns(bool) {
       e = ~e&_e;
       return _e >= _f;
    }



    function j(uint256 _j) public {

    }
}
