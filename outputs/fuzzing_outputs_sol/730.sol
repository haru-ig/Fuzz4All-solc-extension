pragma solidity ^0.8.0;
contract StorageMutator2 {
    uint storedData;
    constructor(uint _initialValue) {
        storedData = _initialValue;
    }
    function increment2() public {
        storedData += 2;
    }
    constructor() public {
    }
    function nonpayableTest() public {
    }
}
