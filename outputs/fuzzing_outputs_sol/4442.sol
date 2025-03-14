pragma solidity ^0.8.0;
contract User {
    bytes32 public constant DATA_SLOT_NAME = keccak256('data');
    string public constant fallbackContractData = 'Data';
    bytes2 public constant fallbackContractData2 = bytes2(bytes2(0) << 160);
    bytes32 memory public constant fallbackContractData3;
    constructor() {
        fallbackContractData = 'FallbackContractData';
        fallbackContractData2 = bytes2(bytes2(0) << 160);
        fallbackContractData3 = fallbackContractData;
    }
    function setFallbackContractData() public {
        fallbackContractData = 'New Data';
    }
    function getFallbackContractData() public view returns (string memory) {
        return fallbackContractData;
    }
    function getFallbackContractData2() public view returns (bytes2 memory) {
        return fallbackContractData2;
    }
    function getFallbackContractData3() public view returns (bytes32) {
        return fallbackContractData3;
    }
    function setData(bytes32 _data) public {
        fallbackContractData3 = _data;
    }
    function getData() public view returns (bytes32) {
        return fallbackContractData3;
    }
}

pragma solidity ^0.8.0;
contract FallbackCaller {
    bytes32 public constant DATA_SLOT_NAME = keccak256('data');
    bytes2 public constant DATA2_SLOT_NAME = keccak256('data2');
    bytes32 public constant DATA3_SLOT_NAME = keccak256('data3');
    bytes2 public constant DATA22_SLOT_NAME = keccak256('data22');
    bytes32 public constant DATA32_SLOT_NAME = keccak256('data32');
    constructor() {
        bytes32 memory _data;
        _data = appendBytes32(
            _data,
            bytes32(bytes32.zero),
            abi.encodeWithSelector(bytes4(keccak256("data3()"))),
            32
        );
        _data = appendBytes32(
            _data,
            bytes32(bytes32.zero),
            abi.encodeWithSelector(bytes4(safeLowHighABI.safeLowHighABI("data3()"))),
            32
        );
        _data = appendBytes2(_data, 0, 20);
        assert(_data == fallbackCaller.
