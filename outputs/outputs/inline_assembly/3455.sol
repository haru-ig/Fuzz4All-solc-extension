pragma solidity ^0.8.0;
contract MyExample1 is ChangeMutagen, ChangeMutagenSet {
    mapping (uint => uint) public mappingIntToUint;
    uint public constant ZERO = 0;
    uint public constant ONE = 1;
    uint public constant TWO = 2;
    uint public constant THREE = 3;
    uint public constant FOUR = 4;
    uint public constant FIVE = 5;

    constructor () {
        mappingIntToUint[ZERO] = ONE;
        mappingIntToUint[ONE] = TWO;
        mappingIntToUint[TWO] = THREE;
    }
}

pragma solidity ^0.8.0;
contract MyExample2 {
    uint constant ZERO = 0;
    uint constant ONE = 1;
    uint constant TWO = 2;
    uint constant THREE = 3;
    uint constant FOUR = 4;
    uint constant FIVE = 5;
    uint constant SIXTH = 6;

    mapping (address => uint) public mappingAddressToUint;
    mapping (address => uint) public mappingAddressToUint2;
    mapping (uint => uint) public mappingUintToUint;
    mapping (uint => uint) public mappingFunctionToUint;
    mapping (uint => uint) public mappingFunctionToUint2;
    mapping (address => uint) public mappingAddressFunctionToUint2;

    constructor() {
        mappingAddressToUint[msg.sender] = ZERO;
        mappingAddressToUint[msg.sender] = ONE;
        mappingAddressToUint[msg.sender] = TWO;
    }

    function setFunction(uint _function) public {
        mappingFunctionToUint[_function]++;
        mappingFunctionToUint2[_function2]++;
        mappingAddressFunctionToUint2[msg.sender]++;
        mappingAddressFunctionToUint2[msg.sender]++;
        mappingUintToUint[_function]++;
        mappingUintToUint[_function]++;
    }

    function changeFunction(uint _function) public {
        mappingFunctionToUint[_function + 1]++;
        mappingFunctionToUint2[_function + 1]++;
        mappingAddressFunctionToUint2[msg.sender++]++;
        mappingAddressFunctionToUint2[msg.sender++]++;
