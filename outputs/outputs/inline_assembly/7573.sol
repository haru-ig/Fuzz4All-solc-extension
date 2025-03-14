pragma solidity ^0.8.0;
contract Example {
    function f() public pure returns (uint) {
        uint _tmp1 = 42;
        uint _tmp2 = 0x1234;
        uint _tmp3 = 0x1234 + 42;
        uint _tmp4 = 0x1234 + _tmp2;
        uint _tmp5 = _tmp3 + 0x1234 + 42;
        uint _tmp6 = 0x1234 + _tmp3;
        return _tmp1 + _tmp5 + _tmp4 + _tmp6;
    }
}

pragma solidity ^0.8.0;
contract Example {
    function f() public view returns (uint) {
        assembly {
            _tmp4 := 42
            _tmp1 := _tmp1 + _tmp4

            _tmp2 := 0x1234
            _tmp3 := 0x1234 + _tmp2

            _tmp4 := 0x1234 + _tmp2
            _tmp5 := _tmp3 + 0x1234 + _tmp4

            _tmp6 := 0x1234 + _tmp3

            _tmp7 := _tmp5 + _tmp6
            _tmp8 := _tmp1 + _tmp7
            _tmp9 := _tmp8 + _tmp9
        }
        return _tmp1 + _tmp5 + _tmp4 + _tmp6;
    }
}
