pragma solidity ^0.8.0;
contract ContractWithFallback {
    bool b;
    receive () external payable {
        b = false;
    }
    function shouldBeTrue() public view {
        assert(!b);
    }
}
