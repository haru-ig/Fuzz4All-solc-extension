pragma solidity ^0.8.0;

contract FallbackCaller {
    function get() public {
        BasicCaller caller;
        addr addrOfCaller;
        (addrOfCaller, caller) = address(this).call{value:1 ether.transferFrom(msg.sender, this, 5)}("");
        callFallback(caller);
    }
    function callFallback(BasicCaller caller) public returns (uint) {
        require(caller.get() == 5);
        contract StorageStorage {
            uint x;
        }
        (contract StorageStorage storage, uint) result;
        storage.set(5);
        result = storage.get();
        require(result == 5);
        return 5;
    }
}
