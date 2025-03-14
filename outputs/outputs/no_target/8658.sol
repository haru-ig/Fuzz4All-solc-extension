pragma solidity ^0.8.0;
contract MutatedTest
{
    function f(uint256) internal pure returns (uint256) {
        return 0;
    }
}
contract OldABIv2
{
}
contract NonMutatedTest
{
    function f() public pure returns (uint256) {
        return 0;
    }
}
contract NewABIv2
{
    function f() public pure returns (uint256)
    {
        return 0;
    }
}
contract TestMutated
{
    function test() public {
        (uint256 x, uint256 x_) = MutatedTest.f(42);
        assert(x == 42 && x_ == 0);
    }
    function test_old_ABI() public {
        (uint256 x, uint256 x_) = OldABIv1.f(42);
        assert(x == 42 && x_ == 0);
    }
    function test_new_ABI() public {
        (uint256 x, uint256 x_) = NewABIv1.f();
        assert(x == 42 && x_ == 0);
    }
    function test_old_ABI_v2() public {
        (uint256 x, uint256 x_) = OldABIv2.f(42);
        assert(x == 42 && x_ == 0);
    }
    function test_new_ABI_v2() public {
        (uint256 x, uint256 x_) = NewABIv2.f();
        assert(x == 42 && x_ == 0);
    }
    function test_non_mutated() public {
        (uint256 x, uint256 x_) = NonMutatedTest.f();
        assert(x == 42 && x_ == 0);
    }
}
