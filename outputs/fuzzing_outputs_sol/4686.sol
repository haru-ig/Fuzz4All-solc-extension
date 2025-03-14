pragma solidity ^0.8.0;
contract Mutator4 {
    function shouldBe(uint foo) internal returns (uint res) {
        if (uint(foo + 1) < 100) res = foo + 1;
        else res = 100;
    }
}
contract Mutator5 {
    function shouldBe(uint bar, uint qux) internal pure returns (uint res) {
        if (qux < bar && bar == 42) res = 42;
        else res == bar;
    }
}
contract Mutator6 {
    function shouldBe(uint bar) internal pure returns (uint) {
        bar = bar + 1;
        return bar;
    }
}
contract FallbackFunctionSample {
    function fallback() public payable {
        Mutator3 _mutator3 = Mutator3(address(2));
        Mutator4 _mutator4 = Mutator4(address(1));
        Mutator5 _mutator5 = Mutator5(address(3));
        Mutator6 _mutator6 = Mutator6(address(4));
        uint _val2 = _mutator3.shouldBe(42);
        uint256 _val4 = _mutator4.shouldBe(42);
        uint256 _val6 = _mutator6.shouldBe(42 + 18);
        uint _val8 = _mutator5.shouldBe(42, 42);
    }
}
