pragma solidity ^0.8.0;
contract C {
    uint public immutable field;
    function fn() public {
        var b = 1;
        bool a = 1;
        uint160 fielda = 1;
        uint256 fieldb;
        bytes memory data;
    }
}
contract D {
    uint public immutable field;
    function fn() public {
        var b = 1;
        bool a;
        uint160 fieldA;
    }
}
contract E {
    uint public immutable field;
    constructor() {
        var b = 1;
        bool a;
        uint160 fielda;
    }
}
contract F {
    uint public immutable field;
    constructor(uint y) {
        var a = 1;
        bool b;
        uint160 fieldb;
    }
}
contract G {
    uint public immutable field;
    constructor(uint256 y) {
        var a;
        bool b;
        uint160 fielda;
    }
}
