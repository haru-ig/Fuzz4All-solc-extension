pragma solidity ^0.8.0;
contract FallbackWithReceiveAndStorage {
    fallback() external payable {
        NonFallback s;
    }
}
contract Caller {


    function test() internal {

        FallbackWithReceiveAndStorage s;

        FallbackWithReceiveAndStorage.call(address(this));
        s = NonFallback(address(0));
    }
}
