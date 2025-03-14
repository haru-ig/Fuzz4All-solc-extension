pragma solidity ^0.8.0;
contract CallAndFallback {
    function call(contract C) returns (uint256 amount) {
        address payable x;
        C xWithFallback;
        x = msg.sender;
        xWithFallback = x as address payable;
        x = xWithFallback;
        return x.functionContract().call.value(10)();
    }
    receive() external {


        revert();
    }
}
