pragma solidity ^0.8.0;
interface SemanticMutationsExample3 {
    function semanticMutatedExample(address payable storage _storage) public;
}

pragma solidity ^0.8.0;
contract SemanticMutationsExample2 {
    function semanticMutatedExample(address _contract) public {
        emit SemanticMutationsExample2Event(1);
        SemanticMutationsExample3(messageSender).semanticMutatedExample(msg.sender);
        SemanticMutationsExample3(_contract).semanticMutatedExample(msg.sender);
        emit SemanticMutationsExample2Event(2);
    }
    event SemanticMutationsExample2Event(uint256 amount);
}

pragma solidity ^0.8.0;
contract SemanticMutationsExample2Storage {
    uint8 internal field;
    uint16 internal fieldStorage;
    bytes32 internal contractHash;

    function getByteDataHash() public view returns (bytes32) {
        return contractHash;
    }
    function setByteDataHash(bytes32 _byteDataHash) public {
        contractHash = _byteDataHash;
    }
    function setField(uint8 _field) public {
        field = _field;
    }
    function getField(uint8 _field) public view returns (uint8) {
        return field;
    }
    function setFieldStorage(uint16 _fieldStorage) public {
        fieldStorage = _fieldStorage;
    }
    function getFieldStorage(uint16 _fieldStorage) public view returns (uint16) {
        return fieldStorage;
    }
}

pragma solidity ^0.8.0;
contract SemanticMutationsExample4 {
    uint8 internal constant DEFAULT_FIELD_VALUE = 0x00;

    constructor() {
        field = DEFAULT_FIELD_VALUE;
    }
    fallback() external payable { }
    function getFieldByFallback() public view returns(uint8) {
        return field;
    }
    uint8 field;
}
