pragma solidity ^0.8.0;
library CallFallbackFunctionOnePlusFallback2 {


    modifier nonZeroAddress(address x) {
        require(x!= address(0), "caller-not-zero");
        _;
    }


    mapping(address => bool) public nonZeroAddressStorage;
    modifier nonZeroAddressStorageTrue(address x) {
        require(nonZeroAddressStorage[x], "caller-not-zero");
        _;
    }

    constructor() {
        mapping(address => bool) storage callIsCallerTrue = nonZeroAddressStorage;
        nonZeroAddressStorage[address(0)] = true;
        nonZeroAddressStorage[address(1)] = true;
        nonZeroAddressStorage[address(nonZeroAddressStorageTrue)] = true;
    }
}
