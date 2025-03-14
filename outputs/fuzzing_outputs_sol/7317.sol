pragma solidity ^0.8.0;
contract ModifiedLowLevelContractCall {
    address private someAddress;
    uint amount;
    bytes memory data;
    constructor(bytes memory d, uint amt, address a) {
        someAddress = a;
        amount = amt;
        data = d;
    }
    function doLowLevelCall(bytes memory b, address c) external payable returns (uint c2) {
        return address(LowLevelContract(someAddress)).doLowLevelCall(b, c);
    }
    function fallback() external payable {
        doLowLevelCall(data, c2);
    }
}
