pragma solidity ^0.8.0;
contract ValueWithoutFallback {
    contract InternalValueWithoutFallback {
        address public valueToCaller;
    }
    struct PublicValueWithoutFallback {
        address valueToCaller;
    }
    struct Caller {
        PublicValueWithoutFallback public valueToCaller;
    }
    Caller public caller;
    constructor(address valueToCaller_) {
        caller.valueToCaller = valueToCaller_;
    }
    function example1() public {
    }
    function example2() public payable {
        caller.valueToCaller.value = valueToCaller.value;
    }
}
