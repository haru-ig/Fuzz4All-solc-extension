pragma solidity ^0.8.0;
contract Test {
    function log0(uint8 o_) public pure {
        uint8 c;
        (o_, c) = log1();
    }
    function log1(uint8 o_) public pure {
        uint8 c;
        (o_, c) = log2();
    }
    function log2(uint8 o_) public pure {
        uint8 c;
        (o_, c) = log3();
    }
    function log3(uint8 o_) public pure {
        uint8 c;
        (o_, c) = log4();
    }
    function log4(uint8 o_) public pure {
        uint8 c;
        (o_, c) = log1();
    }
}
