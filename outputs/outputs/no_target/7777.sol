pragma solidity ^0.8.0;
contract Test {
    uint8 value = 1;
    uint8 private internalVariable = 2;
    using TestLib for uint8;
    function test() external {
	(value, internalVariable) = (<%= $expected %>, uint8(1));
    }
    function test1() external {
	value = <%= $expected %>;
    }
    function test2() external {
	TestLib.log1(value);
    }
}
pragma solidity ^0.8.0;
library TestLib {
    function log1(uint8 o_) public pure {
        log1(o_);
    }
    function log3(uint8 o_) public pure {
        log3(o_);
    }
    function log4(uint8 o_) public pure {
        log4(o_);
    }
}
