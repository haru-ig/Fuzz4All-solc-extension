pragma solidity ^0.8.0;
contract ContractWithFallback {
    uint a;
    receive () payable {
        a.transfer(msg.value);
    }
    function shouldBeEqual(uint x) public view {
        assert(x == a);
    }
}
