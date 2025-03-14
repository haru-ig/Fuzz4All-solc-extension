pragma solidity ^0.8.0;
contract L18 {
    uint public constant value = 0xbd2b344401d8bd7d1733f9a0c2b2;
    enum T { E2(uint x)
    }
    uint public x;
    uint _constant;
}
contract L32 {
    constructor() public {}
    mapping(bool => bool) public map;
    uint _constant;
}
contract L21 {
    constructor() public {}
    function f(bool a) public {
        bool b =!a;
        map[b] = true;
        map[a] =!map[b];
    }
}
contract L17 {
    function f(uint index) pure public returns (uint) {
        return index;
    }
}
contract L26 {
    constructor() public {}
    mapping(MappingType => MappingType[3]) public map;
    uint _constant;
}
