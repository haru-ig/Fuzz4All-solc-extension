pragma solidity ^0.8.0;
contract Example {
    uint constant x = 0;
    uint constant y = 10;
    function f() public returns (uint) {
        uint _tmp = x + y;
        uint _tmp2 = _tmp + _tmp;
        uint _tmp3 =  _tmp2 + y;
        uint _tmp4 = _tmp3 + _tmp;
        uint _tmp5 = _tmp + _tmp3 + _tmp4 + y;
         uint _tmp6 = _tmp + y + y + x;
        return _tmp - _tmp2;
    }
}

pragma solidity ^0.8.0;
contract Example {
    uint constant x = 0;
    uint constant y = 10;
    function f() public returns (uint) {
        uint _tmp = x + y;
        uint _tmp2 = _tmp + _tmp;
        uint _tmp3 =  _tmp2 + y;
        uint _tmp4 = _tmp3 + _tmp;
        uint _tmp5 = _tmp + _tmp3 + _tmp4 + y;
         uint _tmp6 = _tmp + y + y + x;
        return _tmp | _tmp3 | _tmp4 | _tmp5 | _tmp6;
    }
}

pragma solidity ^0.8.0;
contract Example {
    uint constant x = 0;
    uint constant y = 10;
    function f() public returns (uint) {
        uint _tmp = x + y;
        uint _tmp2 = _tmp + _tmp;
        uint _tmp3 =  _tmp2 + y;
        uint _tmp4 = _tmp3 + _tmp;
        uint _tmp5 = _tmp + _tmp3 + _tmp4 + y;
         uint _tmp6 = _tmp + y + y + x;
        return _tmp >> _tmp2;
    }
}
