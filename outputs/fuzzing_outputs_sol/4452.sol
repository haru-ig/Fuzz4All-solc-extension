pragma solidity ^0.8.0;
contract MutatedCaller {
    uint counter;
    modifier mutating() {
        counter += 1;
        _;
    }
    function get() public returns (uint) {
        return counter;
    }
}

pragma solidity ^0.8.0;
contract Caller {
    function get() public pure returns (uint) {
        switch(msg.value) {
            case 100:
                return 5;
            case 2:
                uint data = callFallback();
                break;
            case 1:
                uint value = callFallback();
                break;
            default:
                data = callFallback();
                break;
        }
        return data;
    }

    function callFallback() public pure returns (uint) {
        return 3;
    }
}
contract DemonstrateError {

    function errorFallback() public pure returns (uint) {
        if (msg.value == 0)
            return 1000;
        uint data = 1;
        return data;
    }
}
