pragma solidity ^0.8.0;
contract ContractWithFallback {
    bool b;
    fallback () external {
        b = false;
    }
    function shouldBeFalse() public view {
        assert(b);
    }
}
