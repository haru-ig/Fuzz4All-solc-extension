pragma solidity ^0.8.0;
contract CallContractFallback {
    fallback () external pure {}
    function shouldBeTrue() public pure {
        assert(msg.gas == 200000);
    }
}
