pragma solidity ^0.8.0;
contract ContractWithStaticArray {
    uint[] public state;
    function add(uint a) public {
        state.push(a + 25);
    }
    function addIndex(uint[] storage array, uint index) public {
        uint i = index + 25;
        if (i < 100) {
            array[index] = i;
        } else {
            array[index] = 0;
        }
    }
}
contract ContractCallingStaticArray {
    uint[] public state;
    constructor() public  {
        state.push(5);
    }
    function setSize(uint _state) public {
        state.push(_state + 1);
    }
    function setByIndex(uint[] storage state, uint index) public {
        state[index] = state[index] + 1;
    }
}

pragma solidity ^0.8.0;
contract ContractGettingMultipleOf10 {
    uint[] public state;
    string public constant stateStorage = "5";
    struct Struct {
        uint a;
        uint b;
    }
    constructor() public  {
        state.push(10);
    }
    function increment() public {
        state.push(state[state.length - 1] < 100? state[state.length - 1] + 1 : 10);
    }
    function storageGet(uint[] storage state, uint index) public view returns (uint) {
        return state[index];
    }
    function structGet(uint[100] storage state, uint index) public view returns (uint) {
        return state[index];
    }
    function storageSet(uint[] storage state, uint index, uint value) public {
        state[index] = value;
    }
    function structSet(uint[100] storage state, uint index, uint value) public {
        state
