pragma solidity ^0.8.0;
contract Caller
{
    address payable address_;
    mapping(bytes32 => address payable) callables_;
    mapping(bytes32 => string) strings_;
    constructor(address payable _address) {
        address_ = _address;
    }
    fallback() external payable {}
    function getAddress() external view returns (address) {
        return address_;
    }
    function call(bytes32 _contract_signature, bytes memory _data) public returns (bytes memory) {
        address payable fnAddress = callables_[_contract_signature];
        if (msg.value > 0) {
            if (fnAddress == address_) { return address_.call{value: msg.value}(_data); }
            require(false, "msg.value > 0");
        }
        if (fnAddress == address_) { return fnAddress.call(_data); }
        require(false, "msg.value == 0 || msg.value > 0");
    }
    function setCallerAddress(address payable _newAddress) public {
        bytes4 _contract_signature = bytes4(keccak256("setAddress"));
        address payable fnAddress = callables_[_contract_signature];
        if (msg.value > 0) {
            if (fnAddress == address_) { return address_.call{value: msg.value}(_newAddress); }
            require(false, "msg.value > 0");
        }
        if (fnAddress == address_) { return fnAddress.call(_newAddress); }
        require(false, "msg.value == 0 || msg.value > 0");
    }
    function setString(string memory _name, string memory _value) public {
        bytes4 _contract_signature = bytes4(keccak256("setString"));
        address payable fnAddress = callables_[_contract_signature];
        if (msg.value > 0) {
            if (fnAddress == address_) { return address_.call{value: msg.value}(_name,_value); }
            require(false, "msg.value > 0");
        }
        if (fnAddress == address_) { return fnAddress.call(_name,_value); }
        require(false, "msg.value == 0 || msg.value > 0");
    }
}
