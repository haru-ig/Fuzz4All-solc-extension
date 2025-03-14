pragma solidity ^0.8.0;
contract IsolationTest {
    constructor(string memory _name) {
        emit TestLog(_name);
    }
    uint8 private globalSlot;
    uint private globalSlotValue;
    struct Child {
        string name;
        uint8 globalSlot;
        mapping(uint => bytes32) values;
    }
    Child[] private childData;
    mapping(uint => uint) private childIdIndex;
    string private childDataString;
    uint private childDataSize;
    uint private childGlobalSlotValue;
    mapping(address => uint) mapping(uint => IsolateData) private instanceData;
    event TestLog(string name);
    function childAdd(string memory _name) public {
        childData.push(Child({
            name: _name,
            globalSlot: getGlobalSlotAddress()
        }));
        emit TestLog("Add child: " + _name);
        childIdIndex[childData.length] = childIdIndexLength();
        childDataSize += 1;
    }
    function childDataStorage() public view returns (address, bytes32) {
        return (childData.length + 1, childData[0].values[childGlobalSlotValue]);
    }
    function childDataLength() public view returns (uint) {
        return childData.length;
    }
    function childDataValueLength(uint _index) public view returns (bytes32) {
        return childData[_index].values[childGlobalSlotValue];
    }
    function childDataValue(uint _index, bytes32 _key) public view returns (bytes32) {
        return childData[_index].values[_key];
    }
    function childDataValueAdd(uint _index, bytes32 _key, bytes32 _value) public {
        childData[_index].values[_key] = _value;
    }
    function childDataValueDelete(uint _index, bytes32 _key) public {
        delete childData[childData.length - 1].values[_key];
    }
    function childIdIndexLength() public view returns (uint) {
        return childIdIndex[childIdIndexLength()];
    }
    function childGetIdByIndex(uint _index) public returns (uint) {
        return childIdIndex[_index];
    }
    function childAddInstance(string memory _address, uint _slot) public {
        uint _slotAddress = uint(keccak256(abi.encodePacked((0xf0), _address)));
        if(_slotAddress!= _slot) {
            IsolateData memory newData;
            newData.data = _slot;
            instanceData[_slotAddress][_slot] = newData;
        }
    }
    function childGetDataByIndex(uint _slot) public view returns (uint) {
        return instanceData[getAddress()][_slot].
