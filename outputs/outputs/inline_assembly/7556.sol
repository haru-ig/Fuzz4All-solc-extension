pragma solidity ^0.8.0;
contract Example {
    uint constant x = 0;
    uint constant y = 10;

    function f() public returns (uint) {

        uint memory _tmp7 = x + y;

        uint memory _tmp8 = x + y;

        uint memory _tmp9 =  _tmp8 + y;

        uint memory _tmp10 = _tmp9 + _tmp7;

        uint memory _tmp11 = _tmp7 + y;


        uint memory _final = x + _tmp7 + y;
        return _final + _tmp10 + _tmp11;
    }
}
