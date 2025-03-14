pragma solidity ^0.8.0;
contract MutatedCaller is Caller {
    bool public called = false;
    function call() public payable {
        bool r = call();
        called = r;
    }
    function callNow() internal pure {
        function f() internal pure { return true; }
        f();
        uint256 x = 0;
        x = 1;
    }
}

pragma solidity ^0.8.0;
contract FallbackFailSender {
    constructor () {

        MutatedCaller.call();
    }
}

pragma solidity ^0.8.0;
contract FallbackReceiveSender {
    constructor () {

        MutatedCaller.receive();
    }
}
