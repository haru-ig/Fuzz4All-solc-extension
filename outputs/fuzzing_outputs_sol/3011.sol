pragma solidity ^0.8.0;
contract NewCallerContract {
    CallerWithFallback internal contractCaller;

    constructor(CallerWithFallback _contractCaller) {
        contractCaller = _contractCaller;
    }


    fallback() external payable {
        contractCaller.transfer(address(this), msg.value);
    }
}
