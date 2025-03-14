pragma solidity ^0.8.0;
contract Mutator1 {
    function payWithFallback(address payable _contract) private payable {}
}
contract Reverter1 {
    constructor () private {
       revert("No fallback is defined.");
    }
}
contract Fallback {
    constructor() {
        this.doSomething();
    }
    receive() external payable {}
    function doSomething() public payable {
        this.doNothing();
        this.callRevertedFallback();
        this.revertingFallback();
        this.throwingFallback();
        this.revertAndThrow();
    }
    function doNothing() public payable {
    }

    function callRevertedFallback() public nonReverting payable {
        address payable reverted = address(uint160(uint()));
        revertingFallback(reverted);
    }

    function revertingFallback(address payable _reverted) public {
        if (_reverted == address(this)) revert("revertingFallback");
        this.throwingFallback();
    }

    function revertingFallbackRevertCall(address payable _reverted) public {
        if (_reverted == address(this)) revert(_reverted);
        throw "never";
    }

    function throwingFallback() public {
        throw;
    }

    function revertAndThrow() public payable {
        throw;
    }
}

contract Caller {
    function revertFromCaller() public {
        address payable reverted = address(uint160(uint()));
        if (_reverted == address(this)) revert(reverted);
        this.throwing();
    }
    function throwing() payable public {
        throw;
    }
}
