pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentModulation_V5 {
    uint[] public x;
    mapping(uint => uint) public y;
    constructor (uint _z) public {
        x = new uint[](2);
    }
        function setPairs_V5(uint _a) public {
        x[0] = _a;
    }
}

pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentModulation_V6 {
    uint[] public x;
    uint[] public y;
    constructor () public {
        uint[] memory a;
        x = a;
    }
}
contract SymbolicEquality_AssignmentModulation_V7 {
    uint[] public x;
    uint[] public y;
    constructor () public {
        uint[] memory b;
        x = b;
    }
}
contract SymbolicEquality_AssignmentModulation_V8 {
    uint[] public x;
    uint[] public y;
    constructor (uint _b, uint _d) public {
        uint[] memory a;
        x = new uint[](2);
        x[0] = _b;
        x[1] = _d;
    }
}
contract SymbolicEquality_AssignmentModulation_V9 {
    uint[] public x;
    uint[] public y;
    constructor (uint _b) public {
        uint[] memory z;
        x = new uint[](2);
        x[0] = _b;
        x[1] = 1;
    }
}
contract SymbolicEquality_AssignmentModulation_V10 {
    uint[] public x;
    uint[] public y;
    uint[] public z;
    constructor (uint _b) public {
        uint[] memory z;
        x = new uint[](2);
        y = new uint[](2);
        x[0] = _b;
        x[1] = 0;
        y[0] = _b >> 1;
        y[1] = _b;
        z = x;
    }
}
contract AssignmentModification_V1 {
    uint public immutable i = 10;
    constructor (uint _b) public {
        uint b;
        i = _b;
        b = _b + 1;
    }
}
contract AssignmentInitialization_V2 {
    uint public immutable a = 0;
    uint public b = 0;
    uint public u = 0;
    uint public s = 0;
