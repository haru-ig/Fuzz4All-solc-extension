pragma solidity ^0.8.0;
contract FallbackTest {
    constructor() public
    {}
    fallback() external payable
    {
        uint256 value;
        assembly { value := mload(add(mload(0x40), 0x20)) }
        value += 1;
        assert(value > 0);
    }
}
address _addr = "0x99999999999999999999999999999999999999999";
TestSemantics m = TestSemantics(_addr);
m.f();
m.modifiedG();
