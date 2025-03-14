pragma solidity ^0.8.0;
contract PayableFallbackWithContractReceive {
    address payable _from;
    event FromAddressModified(address oldVal, address newVal);
    constructor() payable { _from = msg.sender; }
    function _updateFrom(
        address newAddr
    ) public {
        _from = newAddr;
        emit FromAddressModified(address(_from), newAddr);
    }
    function _fallback() public {
        if (msg.value!= 1 ether) {
            revert();
        }
        _updateFrom(address(this));
    }
    function _transferEther(
        uint256 nothing
    ) public {
        _updateFrom(address(this));
    }
}
contract Caller {
    function transferEther() public payable {
        if (msg.value!= 1 ether) {
            revert();
        }
    }
}
contract Complex {
    function simpleCall() public { }
    function notModified() public {
        simpleCall();
    }
    receive() public payable {}
    function receiveCall() public payable {}
    function simpleReceiveCall() public payable {}
    function notModifiedReceiveCall() public payable {}
    function payableFallback() public payable {
        revert();
    }
    function payableFallbackWithContractReceive() public payable {
        callWithFallback();
    }
    function simpleCallWithContractReceive() public {
        receiveCall();
    }
    function callWithFallback() public {
        _fallback();
    }
}
contract CallerFallback {
    function doNothing() public { }
}
