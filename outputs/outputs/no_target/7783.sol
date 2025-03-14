pragma solidity ^0.8.0;
import 'TestLib.sol';
contract OldVersionTest {
    address public owner;
    constructor () {
        owner = msg.sender;
    }
    function log1(uint8 o_) public {
        o_ = o_ + 1;
        TestLib.log1(o_);
    }
    function log2(uint8 o_) public {
        o_ = o_ + o_;
        TestLib.log2(o_);
    }
    function log3(uint8 o_) public {
        o_ = o_ + OWNING_TOKEN_ADDRESS;
        TestLib.log3(o_);
    }
    function log4(uint8 o_) public {
        o_ = o_ + address(this);
        TestLib.log4(o_);
    }
}
