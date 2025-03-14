pragma solidity ^0.8.0;
contract ContractWithFallback {
    address payable b;
    fallback () external {
        b = msg.sender;
    }
    function shouldBeFalse() public view {
        assert(b.balance == 0);
    }
}
