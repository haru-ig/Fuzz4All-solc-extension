pragma solidity ^0.8.0;
contract HigherOrder {
    receive() external payable {}
    function higherOrder() public pure {
        revert();
    }
}


contract ImmutableFallbackTest {
    function immutableFallbackTest() public {
        immutableFallbackTestThrow();
    }
    function immutableFallbackTestThrow() internal {
        uint256 x;
        uint256 y;
        try immutableFallbackTestRevert() {
            x = 10000;
            y = 20000;
        } catch {
            y = 30000;
            x = 40000;
        }
    }
    function immutableFallbackTestRevert() public pure {
        revert();
    }
}


contract AbstractFallbackTest {
    function abstractFallbackTest() public {
    }
    function abstractFallbackTestThrow() internal pure {
        uint256 x;
        uint256 y;
        try abstractFallbackTestRevert() {
            x = 10000;
            y = 20000;
        } catch (bytes memory b) {}
        x = 50000;
        y = 60000;
    }
    function abstractFallbackTestRevert() public pure {
        revert();
    }


    contract InheritedFromImmutableWithoutFallbackTest {
        ImmutableFallbackTest immutableTest;
        function inheritdFromImmutableWithoutFallbackTest() public {
            try inheritdFromImmutableWithoutFallbackTestThrow().value(1 ether) {} catch (bytes memory b) {}
        }
        function inheritdFromImmutableWithoutFallbackTestThrow() internal pure {
            immutableTest.immutableFallbackTestThrow();
        }
        function inheritdFromImmutableWithoutFallbackTestRevert() public pure {
            immutableTest.immutableFallbackTestRevert();
        }
    }
}


contract InheritedFromBothImmutables {
    ImmutableFallbackTest immutableTest;
    function inheritdFromBothImmutables() public {
        try inheritdFromBothImmutablesThrow().value(1 ether) {} catch (bytes memory b) {}
    }
    function inheritdFromBothImmutables
