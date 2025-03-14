pragma solidity ^0.8.0;
contract FallbackTest {
    function toFallbackTest() internal {
        SemanticallyEquivalentTo _contractUnderTest = SemanticallyEquivalentTo(msg.sender);
        _contractUnderTest.fallback();
    }
}
