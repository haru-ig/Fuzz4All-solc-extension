pragma solidity ^0.8.0;
contract ContractWithSimpleFallback {
    bool b;
    receive() external payable {
        b = false;
    }
    function shouldBeFalse() public view {
        assert(b);
    }
}
