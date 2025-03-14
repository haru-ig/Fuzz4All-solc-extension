pragma solidity ^0.8.0;
contract Bar is Bar {
    function bar() onlyOwnerBar public pure returns (address x_, uint8 y_) {
        uint8 z = bar();
        return (0x00, z);
    }
}


pragma solidity ^0.8.0;
contract Bar {
    function bar(address x_) public pure returns (address y_) {
        return (0x00, x_);
    }
}
interface I {
    function f() external pure returns (bool);
}
contract FooImpl {
    function foo() public pure {
        emit Log(false);
        require(false);
    }
}
contract Foo is FooImpl {
    function foo() external pure {
        I i = FooImpl(msg.sender);
        i.f();
        log0();
        log1(bool(3));
        log2(0x08A97EB8839D4C9B05E3B8F371E87E94838F696B);
        log3(12u32, 36701234, 5379828448u723u16);
        log4(true, false, uint8(~uint256(0x15a0u703)));
        log2(bytes20(0x8BA5B738EBE601F7C223E374913BD629F7F6C8C8));
        log3(address(0x0000000000000000000000000000000000000000), bool(0), (uint8(0xfe));
        log3(address(0x0000000000000000000000000000000000000000), bool(0), (uint8(0xfe)));
        log3(address(0x0000000000000000000000000000000000000000), bool(0), (uint8(0xfe)), address(0x000000000000000000000000000000000000), bool(0));
        log3(address(0x0
