pragma solidity ^0.8.0;
contract EquivalentToContractWithFallback {
    bool b;
    ReceiveEther() payable external;
    function receive() external payable {
        b = false;
    }
    function shouldBeFalse() public view {
        assert(b);
    }
}
