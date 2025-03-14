pragma solidity ^0.8.0;
contract EthStorage {
    uint256 internal readonly uintValue;
    uint256 private _uint;
    mapping(address => uint256) private _addressToUint;
    mapping(uint256 => uint256[]) private _memoryArrays;
    mapping(uint256 => bytes32[]) private _memoryHashes;
    mapping(uint256 => uint256) private _memoryMappingOfIdsToAddresses;
    constructor() {
        uintValue = 4;
        _uint = 4;
    }
    function setUint(uint256 _uint) public {
        uintValue = _uint;
        _uint = _uint / uintValue;
    }
    function setUintAndReturnUintWith(uint256 _uint) public view returns(uint256 _uintConverted) {
        uintValue = _uint;
        uintValue = _uint / uintValue;

        _uint = _uint / uintValue;
        return _uint;
    }
    function getUintWith(uint256 _uint) public view returns(uint256 _return) {
        uintValue = _uint;
        uintValue = _uint / uintValue;
    }
    function getUint() public view returns(uint256 _return) {
        uintValue = 4;
        return 4;
    }
    function setUintUint(uint256 _int1, uint256 _int2) public {
    }
    function setUintUintAndReturnUintWith(uint256 _int1, uint256 _int2) public view returns(uint256 _return) {
        uintValue = _int1;
        _return = _int1 / _return;

        uintValue = _int2;
        _return = _int2 / _return;

        uintValue = _int1;
        _return = _int1 / _return;

        return _uint;
    }
}
