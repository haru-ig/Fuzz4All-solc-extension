pragma solidity ^0.8.0;
contract Mutater6 {
    uint32 internal _storage;
    uint32 public _contract;
    mapping(uint32=>uint32) public storageMap;
    function mutatedFunction(uint32 source, address destination) public {
        address contractAddress = destination;
        _contract = contractAddress;
        _storage = storageMap[source];
        uint32 _value;
        assembly {
            let size := mload(0x40)
            _value := mload(add(source, 0x20))
            storageMap[source] := _value
            returndatacopy(add(contractAddress, 0x20), 0, size)
            switch staticcallreturn(0, contractAddress, size, add(0x20, 0x40), 0, _value){
            case 0 {
            mstore(add(source, 0x20), _value)
            break
            }
            default { revert(0, 0) }
            }
        }
        emit Transfer(source, destination, _value);
    }
    function receiveTransfer(uint32 source) public payable {
        bytes memory data = msg.data;
        assembly {
            _storage := mload(add(source, 0x20))
            switch staticcallreturn(0, address(this), 0, add(0x20, mload(add(source, 0x20))), 0, _storage){
            case  0 {
                let size := mload(add(source, 0x20))
                mstore(add(source, 0x20), _storage)
                revert(0, 0)
            }
            default { returndatacopy(add(address(this), 0x20), 0, size) }
            }
        }
    }
}
