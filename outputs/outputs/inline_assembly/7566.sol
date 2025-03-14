pragma solidity ^0.8.0;
contract Example {
    uint constant _tmp13 = 0;
    uint constant _tmp12 = 0;
    uint constant _tmp_initialx = 0x1234;
    uint constant _tmp15 = _tmp_initialx;
    uint constant _tmp14 = _tmp15;
    uint constant _tmp16 = _tmp_initialx + 0x1234;
    uint constant _tmp17 = _tmp14 + _tmp_initialx + _tmp12;
    uint constant _final = _tmp13 + _tmp16 + _tmp17;
    uint constant _tmp18 = _tmp13 + _tmp13 + 0x2345;
    return _final + _tmp13 + _tmp18;
}
