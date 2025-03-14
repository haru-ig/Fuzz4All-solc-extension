pragma solidity ^0.8.0;
contract ContractWithFallback {
    function shouldBeTrue() public {
        (bool b,) = address(this).call{value: ethers.defaultBalance()}("");
        assert(!b);
    }
    bool b;
    fallback () external payable {
        b = false;
    }
}
