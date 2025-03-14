pragma solidity ^0.8.0;
contract MutateExample {
    uint8 public data;
    function set(uint8 _data) public {
        data = _data;
        emit GetData(address(this), data);
    }
    function get() public view returns (uint8) {
        return data;
    }
    function call() public view returns (uint8) {
        assembly {
            calldatacopy(0x00, 0x20, returndatasize)

            let result := call(gas(), returndatasize, 0, 0, returndatasize, 0, 0)
            let returndata := returndatacopy(0x20, 0, returndatasize)

            returndatacopy(0x00, 0x00, returndatasize)

            returndatacopy(0x00, 0x00, returndatasize)

            returndatacopy(0x00, 0x00, returndatasize)

            returndatacopy(0x00, 0x00, returndatasize)

            returndatacopy(returndata, 0x00, returndatasize)

            returndatacopy(returndata, 0x00, returndatasize)

            returndatacopy(returndata, 0x00, returndatasize)

            returndatacopy(returndata, 0x00, returndatasize)

            returndatacopy(returndata, 0x00, returndatasize)

            returndatacopy(returndata, 0x00, returndatasize)

            returndatacopy(returndata, 0x00, returndatasize)

            returndatacopy(returndata, 0x00, returndatasize)

            returndatacopy(returndata, 0x00, returndatasize)

            returndatacopy(returndata, 0x00, returndatasize)

            returndatacopy(returndata, 0x00, returndatasize)

            returndatacopy(returndata, 0x00, returndatasize)

            returndatacopy(returndata, 0x00, returndatasize)

            returndatacopy(returndata, 0x00, returndatasize)

            return
