pragma solidity ^0.8.0;
contract CallerWithFallbackExample {
    CallerWithFallback public _callerWithFallback;

    string public _description = "Caller that allows Ether transfers.";

    constructor() {
        _callerWithFallback = new CallerWithFallback();
    }

    function setupCallerWithFallback(CallerWithFallback caller) public {
        _callerWithFallback = caller;
    }


    function transfer(address addressTo, uint256 amount) public {

        _callerWithFallback.transfer(addressTo, amount);


        (bool success, bytes memory bytecode) = addressTo.call{value: amount}("");
        require(success, "Failed to do transfer.");



    }
}
