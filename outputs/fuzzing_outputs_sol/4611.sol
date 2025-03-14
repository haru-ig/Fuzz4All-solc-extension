pragma solidity ^0.8.0;
contract ContractWithFallback {
    bool b;
    receive() external payable {
        b = false;
    }
    function shouldBeFalse() public view {
        assert(b);
    }
    function shouldSucceed() public payable {
        assert(b);
    }
    function shouldBeFalseOnlyOnce() public view {
        b = true;
    }
}

contract Caller {
    fallback(uint256) public;
}
