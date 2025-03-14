pragma solidity ^0.8.0;
contract FirstContract {
    function log1(uint8 o_) public pure {
        new TestLib.TestLib.log1(o_);
    }
    function log2(uint8 o_) public pure {
        new TestLib.TestLib.log2(o_);
    }
    function log3(uint8 o_) public pure {
        new TestLib.TestLib.log3(o_);
    }
    function log4(uint8 o_) public pure {
        new TestLib.TestLib.log4(o_);
    }
}
