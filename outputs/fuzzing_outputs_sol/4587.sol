pragma solidity ^0.8.0;
contract ContractWithFallback2 {
    uint public foo;
    fallback () external {
        foo = (1 << 128);
    }
    function shouldBeFalse() public view {
        assert(foo == (1 << 128));
    }
}
