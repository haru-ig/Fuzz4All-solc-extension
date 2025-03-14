pragma solidity ^0.8.0;
contract Caller {
    address private _caller;
    function doNothing() external {
        if (msg.value > 0) {

        } else {

            revert();
        }
    }

    function doSomething() external {

        if (msg.value > 0) {
            callWithFallback();
            callWithoutFallback();
        }
    }

    function callWithFallback() internal payable {
        _caller.transfer(msg.value);
    }

    function callWithoutFallback() internal {
        _caller.sendValue(msg.value);
    }
}
