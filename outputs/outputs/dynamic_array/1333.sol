pragma solidity ^0.8.0;
contract EquivalentDynamicArrayTypeCheck4_Copy {
    struct ArrayItem { bool b; }
    ArrayItem[] public array;
    uint public index = 0;
    uint public length;
    uint public lengthAfterArrayChange;
    address addr;

    constructor ()
    {
        addr = msg.sender;

        array[0] = ArrayItem(true);
        array[1] = ArrayItem(false);
        array[0].b = false;
        length++;
        lengthAfterArrayChange = length;
    }

    function setLength(uint _length)
    {
        addr = msg.sender;
        bytes memory payload = abi.encodeWithSignature("setLength(uint)", _length);
        assembly {
            let result := mstore(0, payload)
            returndatacopy(0, 0, returndatasize())
        }
        require(keccak256(abi.encode(payload)), 0) == keccak256(abi.encode(payload[1:40])), "Return data hash does not match hash of encoded calldata");
        checkEqual("Set length call should succeed", _length, length);
    }

    function getLength()
    returns(uint)
    {
        addr = msg.sender;
        bytes memory payload = abi.encodeWithSignature("getLength() -> (uint)", );
        assembly {
            let result := mload(0)
            returndatacopy(0, 0, returndatasize())
        }
        require(keccak256(abi.encode(payload)), 0) == keccak256(abi.encode(payload[1:40])), "Return data hash does not match hash of encoded calldata");
        uint _length = uint(unpack(payload));
        checkEqual("Get length call should succeed with length", _length, length);
    }

    function setItem(uint i)
    {
        bytes memory payload = abi.encodeWithSignature("setItem(uint) -> (bool)", i);
        assembly {
            let result := mstore(0, payload)
            returndatacopy(0, 0, returndatasize())
        }
        require(keccak256(abi.encode(payload)), 0) == keccak256(abi.encode(payload[1:40])), "Return data hash does not match hash of encoded calldata");
