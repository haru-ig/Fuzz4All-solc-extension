pragma solidity ^0.8.0;
contract ImmutableStore {
    IImmutable public immutableStore;
    uint256 private immutableStoreInit;
    modifier init() {
        require(immutableStoreInit == 0, "Previous initialize already called");
        immutableStoreInit++;
        immutableStore = addressFrom();
        _;
    }
    function addressFrom() init internal view returns (address) { return 1; }
    constructor ( ) init() { }
}
