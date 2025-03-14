pragma solidity ^0.8.0;

contract FallbackCaller is Fallback {


    address receiver;


    constructor(address receiver_) {
        receiver = receiver_;
    }


    function sendTransaction(address payable _value) public {

        if (address(this).call{value: _value}()) {

            _fallback(abi.encode(_value));
        } else {


            receiver.transfer(_value);
        }
    }
}
