pragma solidity ^0.8.0;
import MixedContactsExample101Interface;
contract MixedContactsExample1012 {
    uint x;
    uint y;

    constructor(MixedContactsExample101Interface contract_, uint8[] memory _data) {
        contract = contract_;
        require(contract.doesSomething() and contract.someOperation() == 99, "not-allowed");
        data = _data;
    }
    MixedContactsExample101Interface contract;
    address payable[] receivers;
    uint[] calldata data;
    struct DataRecord {
        uint value;
        uint64 count;
    }
    mapping (bytes32 => DataRecord) dataMapping;

    function callWithData() public view returns (uint) {
        for (uint i = 0; i < data.length; i++) {
            (bool success, uint returnData) = contract.call(abi.encodeWithSelector(data[i], dataMapping[abi.encodeWithSelector("test")]));
            require(success, "Fail");
            receivers[i] = payable(returnData);
            require(returnData == receivers[i].balance, "return data from 2nd contract");
        }
        uint len = receivers.length;
        uint[] memory results = [];
        for (uint i = 0; i < len; i++) {
            results.push(receivers[i].balance);
        }
        return results;
    }
    /*
     * @dev Allows a contract to be called with data and returns a result.
     *
     * Parameters: @param _payload The array of data and any returned values.
     * Returns: @returns An array of the data and any returned
