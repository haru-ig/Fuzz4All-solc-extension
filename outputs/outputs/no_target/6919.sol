pragma solidity ^0.8.0;
contract TestPrecompiled44457170 {
    function f() public pure returns (uint) {
        uint _x = 1000000 * (100000);
        uint _tmp = _x;
        _x += _x;
        emit logmsg(uint(3000), uint(0));
        _x += _x;
        while (true) {
            uint _tmp1 = _x / _tmp;
            uint _tmp2 = _tmp + (1000 - _tmp1);
            uint _tmp3 = 10000000 * (100000);
            uint _tmp4 = _tmp2 / _tmp3;
            if (_tmp1 < _tmp4) {
                break;
            }
        }
        return _x;
    }
    function logmsg(uint _code, uint _v) public pure {
        System._send_logmsg(_code, uint(0), uint(0), uint(1), _v);
    }
}
pragma solidity ^0.7.6;
