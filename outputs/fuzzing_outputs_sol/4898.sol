pragma solidity ^0.8.0;
contract Mutator {
    event SayIHaveToRevert();
    function throwRevert() public {
        revert("Something went wrong");
    }
    function payWithFallback(address payable _receiver) public payable {
        if(test())
            revert("Something went wrong. Can't revert with a fallback");
        _receiver.transfer(msg.value);
    }
}

contract Caller {
    bytes4 receiveData;
    constructor() public {
    }
    modifier receivingData() {
        emitData();
        _;
    }
    function receiveCallData(bytes4 _data) public payable {
        receiveData = _data;
    }
    function emitData() private {
        if(receiveData == 0x1660ed55) {
            emit SayIHaveToRevert();
        }
    }
}
