pragma solidity ^0.8.0;
contract UntouchedCaller {

    constructor() {
        emit CallerFallback();
    }
    fallback() public {}
    receive() public  {
    }
    event CallerFallback();
}

pragma solidity ^0.8.0;
contract UntouchedCallerEvents {
    event CallerFail;
    constructor() {
        emit CallerFail();
    }
    fallback() public {
        emit CallerFail();
    }
    receive() public  {
    }
    event CallerFail();
}
contract MutatedCallerEvents {
    function pay_fallback2() public payable {}
    function mut_fallback() public {
    }
    fallback() payable external {
        emit MutCallerFallback();
    }
    event MutCallerFallback();
}
