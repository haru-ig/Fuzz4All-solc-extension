pragma solidity ^0.8.0;
contract EquivalentDynamicArrayAssignment2 is EquivalentDynamicArrayAssignment3{
    constructor (uint _maxSize) {
        _max = _maxSize;
        _uintArray.push(0);
    }
    function pushMax() public{
        _uintArray.push(_max);
    }
    function pop() public{
        delete _uintArray[_uintArray.length-1];
    }
    function popAll() public{
        for(uint i = _uintArray.length-1; i >= 0; i--) {
            delete _uintArray[i];
        }
    }
    function setMax(uint _newMax) public payable {
        _max = _newMax;
    }
}


pragma solidity ^0.8.0;
contract EquivalentDynamicDataAssignment is EquivalentDynamicArrayAssignment2{
    function () public payable{
        uint[] memory localA;
        localA.push(0);
        while(true){
            _uintArray.push(uint(msg.value));
        }
    }
    function() public payable {
        delete _uintArray[_uintArray.length-1];
    }
    function () external payable {
        uint[] memory localA;
        delete _uintArray[localA.length-1];
    }
}


pragma solidity ^0.8.0;
interface DataAbstraction {
    function get(uint x) external view returns(uint);
}

contract EquivalentDataAbstraction {
    uint[] private dataArray;

    function () public {
        dataArray.push(1);
    }
    function get(uint x) public view returns(uint) {
        return dataArray[x];
    }
}


pragma solidity ^0.8.0;
contract EquivalentDataAbstractionStore {
    uint storedValue;
    DataAbstraction internal dataAbstraction;

    constructor (DataAbstraction _dataAbstraction) {
        dataAbstraction = _dataAbstraction;
        storedValue = dataAbstraction.get(1
