pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentDynamicAraryModulation3 {
    uint[] public a;
    constructor () public {
        a = new uint[](2);
        a[0] = 1;
    }
    function m(uint _x) public view returns (uint[] memory) {
        return a;
    }
    function set_x() public {
        a[0] = 2;
    }
}

pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentDynamicAraryModulation4 {
    uint[] public a;
    constructor () public {
    }
    function m(uint _x) public view returns (uint[] memory) {
        return a;
    }
    function set_a() public {
        a[0] = 1;
        a[1] = 1;
    }
}
pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentDynamicAraryModulation5 {
    uint[] public a;
    constructor () public {
        a[0] = a;
        a;
    }
    function m(uint _x) public view returns (uint[] memory) {
        if (_x == a) { a; } else { a; }
    }
    function set_a() public {
        a;
    }
}
pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentDynamicAraryModulation6 {
    uint[] public a;
    constructor () public {
        a[2] = a;
    }
    function m(uint _x) public view returns (uint[] memory) {
        (a; )
    }
    function set_a() public {
        a;
    }
}
