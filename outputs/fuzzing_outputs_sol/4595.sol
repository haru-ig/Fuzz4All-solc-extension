pragma solidity ^0.8.0;
contract ContractWithNameFallback {
    bool b;
    fallback () public payable {}
    function shouldBeTrue() ownerOnly() external view {
        assert(!b);
    }
}
