pragma solidity ^0.8.0;
import "./TestLib.sol";
contract TestLib2Contract {
    function log5(uint8 o_) public pure {
        TestLib.log1(o_);
    }
    function log6(uint o_) public pure {
        TestLib.log5(o_);
    }
    function log7(uint o_) public pure {
        TestLib.log2(o_);
    }
    function log8(uint o_) public pure {
        TestLib.log3(o_);
    }
    function log9(uint o_) public pure {
        TestLib.log4(o_);
    }
}
