pragma solidity ^0.8.0;
contract Caller {
    function call() public payable {
        MutatedFallbackExample mfe;
        mfe.fallback.value(msg.value)("");
    }
}
