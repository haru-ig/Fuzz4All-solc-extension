pragma solidity ^0.8.0;

abstract contract IDelegateReceiverMock is IDelegateReceiver{
    address private _delegateReceiverAddress;
    constructor() {
    }
    function delegateReceiverFunction() external override view returns(uint256){
        return 0;
    }
}

contract TestDelegate is IDelegateReceiverMock{
    constructor() {
    }
    function delegateReceiverFunction() external override view returns(uint256) {
        return address(this).balance;;
    }
}
