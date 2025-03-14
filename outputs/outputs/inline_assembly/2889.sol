pragma solidity ^0.8.0;
contract C {
    struct M { uint z; }
    enum E {  A, B }
    uint _tmp;
    function set(M memory _m) public {
        if (_m.z == 0) {
            set(_x);
            return;
        }
        E e = _m.z == 1? E.A : E.B;
        _tmp += 1;
    }
    mapping(uint => bool) m_x;
    function func() public returns (bool) {
        M memory _x;
        set(_x);
        m_x[5] = true;
        set(_x);
        set(_x);
        set(_x);
        set(_x);
        if (_tmp == 0) {
            set(_x);
        } else if (_X[_tmp].z == E.A) {
            m_x[5] = true;
        } else {
            m_x[5] = true;
            set(_x);
        }
        _tmp += 1;
    }
    function _X(uint _num) public pure returns (M memory _m) {
      if (_num == E.A) { _m = M({z : 1}); }
      if (_num == E.B) { _m = M({z : 3}); }
    }
}
