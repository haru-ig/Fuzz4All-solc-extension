pragma solidity ^0.8.0;
contract B3aEvents is I3aEvents{
    constructor() {
        emit e(0);
    }
    function () external view returns (uint32 a) {
        a = 0;
        return a;
    }
}
contract B2aEvents is I3aEvents{
    constructor() {
        emit ee(0);
    }
    function () external view returns (uint32 a) {
        a = 0;
        return a;
    }
}
contract C2aEvents {
    constructor () {
        emit ee(0);
    }
    function () external returns (uint32) {
        return 0;
    }
}
contract C3aEvents {
    constructor () {
        emit ee(0);
    }
    function () external view returns (uint32) {
        return 0;
    }
}
contract C3aEvents2 {
    constructor () {
        emit ee8(0,0);
    }
    function () external view returns (uint32,uint) {
        return (0, 0);
    }
}

contract D3aEvents {
    constructor () {
        emit ee8(0,0);
    }
    function () external view returns (uint32,uint) {
        return (0, 0);
    }
}
contract F3aEvents {
    constructor () {
        emit ee8(0,0);
    }
    function () external view returns (uint32,uint) {
        return (0, 0);
    }
}

contract F4aEvents {
    constructor () {
        emit ee8(0,0);
    }
    function () external returns (uint32,uint) {
        return (0, 0);
    }
}
