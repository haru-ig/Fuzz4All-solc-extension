pragma solidity ^0.8.0;
contract ContractWithFallback {
    bool public b;
    function doSomething(bool _newB) internal returns (bool) {
        b = _newB;
    }
    receive() external payable {
        doSomething(!b || gasleft() > 10 ether);
    }
    function shouldBeFalse(bool _newB) public view {
        assert(b == _newB);
    }
}


pragma solidity ^0.8.0;
contract ContractWithBothFallbacks {
    function shouldBeFalse() public view {
        assert(b);
    }
    fallback() external payable {}
    receive() external payable {}
}
