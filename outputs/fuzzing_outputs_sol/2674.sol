pragma solidity ^0.8.0;
abstract contract AbstractCallWithFallback {

    bool public isFinished = false;
    bool public isPayed;

    function onFallback(address) public virtual payable {
    }
    function fallback() public {
        if (isPayed &&!isFinished) {
            isFinished = true;
        }

    }
    function setPay() public {
        isPayed = true;
    }
}
