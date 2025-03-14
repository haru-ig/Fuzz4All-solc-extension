pragma solidity ^0.8.0;
contract ArrayMutationsC {
    uint[] array0;
    uint[] memory array1;
    uint[] public array02;
    uint[] internal array12;
    function setA(uint[] memory numbers_), uint[] public returns (uint[] memory) {
        return array0;
    }
    function getA() public {
        return array0;
    }
    function getA() public returns (uint[] memory) {
        return array0;
    }
    function getA() public external returns (uint[] memory) {
        return array0;
    }
}
contract ArrayMutationC7733 {
    uint[] public statics;
    uint[] statics2;
    uint[] private statics3;
    uint[] public constant statics4 = [];
    function setA(uint[] memory numbers_) public {
        statics = numbers_;
    }
    function setA2(uint[] memory numbers2_), uint[] public returns (uint[] memory) {
        statics2 = numbers2_;
        return statics2;
    }
    function getAStatic() public static returns (uint[]) {
        return statics;
    }
    function getA() public {}
    function getA() public {
        return getAStatic();
    }
    function getA() public returns (uint[] memory) {}
    function getA2() public {
        return statics2;
    }
    function getA() public {
        return statics2;
    }
}

contract ProgramC7733 {
    address[] constant public addresses;
    uint public returns;
    constructor() {
        addresses[0] = msg.sender;
        returns = addresses[0].value(1 ether)();
    }
}
contract Program {
    address[] constant public addresses;
    uint public returns;
    constructor() {
        addresses[0] = msg.sender;
        returns = addresses[0].value(1 ether)();
    }
}
contract ProgramC {
    address[] constant public addresses;
    uint public returns;
    constructor() {
        addresses[0] = msg.sender;
        returns = addresses[0].value(1 ether)();
    }
}

pragma solidity ^0.8.0;
contract ProgramC7733 {
    uint[8] pub publics;
    uint[7] privates;
    function setP(uint[8] memory publics_) public {
        return publics;
    }
    function setP(uint[7] memory privates_) public returns (uint[8] memory) {
        return publics;
    }
    function setP(uint[8] memory publics_) public returns (uint[8] memory) {
        return publics;
    }
    function setP(uint[8] memory publics_) public returns (uint[7] memory) {
        return privates;
