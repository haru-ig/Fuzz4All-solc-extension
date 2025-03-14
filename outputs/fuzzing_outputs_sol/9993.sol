pragma solidity ^0.8.0;
contract Mutator {
    address payable caller;
    address dest;
    uint amount;

    constructor() {
        caller = msg.sender;
        dest = address(this);
    }

    modifier onlyCaller() {
        require(msg.sender == caller, "I don't have permission!");
        _;
    }

    function payoff() onlyCaller public {
        payable(dest).transfer(amount);
    }

    function throwIfCallerIsInvalid() internal onlyCaller {
        if (caller!= dest)
            throw new Error("Caller cannot payoff to invalid address");
    }

    function throwIfCallerIsNotSelf() internal onlyCaller {
        if (msg.sender == caller)
            throw new Error("Caller must not pay off self");
    }

    function initialize(address payable newCaller) public {
        caller = newCaller;
    }

    function initializeAndTransfer(address payable newDest, uint newAmount) public {
        dest = newDest;
        amount = newAmount;
        throwIfCallerIsNotSelf();
    }
}

contract A is Mutator, Caller{

    constructor() Mutator(){

    }
    function get() public view returns (uint) {
        uint returnValue = 5;
        return returnValue;
    }

    function notPayoff() public {
        uint payoff = get();
        amount = 1000000000;
    }

    function callBack() public {
       require(get() > 3, "should be greater than three");
       payoff();
    }

    function fallback(uint x) public payable {
        if (msg.value < 1 ether)
            revert("Caller should pay");
        if (msg.value < 2 ether)
            throw new Error("Caller must pay exactly twice");
        if (!msg.value < 3 ether)
            throw new Error("Caller should pay at least once");
    }
}

contract B is A {
    constructor() A(){

    }
}
