pragma solidity ^0.8.0;
contract Fallback {


    function fallback() external payable {}
}

contract FallbackCaller {

    address public caller;
    address public fallbackTo;
    constructor(address _caller, address _fallbackTo) {
        fallbackTo = _fallbackTo;
        caller = _caller;
    }


    function() external payable {
        if (fallbackTo!= address(0)) {
            fallbackTo.call{value: msg.value}("");
        } else {
            caller.send{value: msg.value}("");
        }

    }
}
