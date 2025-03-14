pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentModulation_V1 {
    uint[] public x;
    mapping(uint => uint) public y;
    struct mypair { uint aValue; uint bValue; }
    constructor () public {
        x = new uint[](2);
        uint[] storage z = x;
        z.push(x[1]);
        z.push(x[1]);
    }
        function setPairs(mypair[] memory a, uint k) public {
        x[1] = a[k].bValue;
    }
}

pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentModulation_V3 {
    uint[] public x;

    function setPairs(uint[] memory a, uint k) public {
    	x[1] = a[k];
    }
}

pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentModulation_V4 {
    uint[] public x;
    mapping(uint => uint) public y;
    struct mypair { uint aValue; uint bValue; }
    constructor() public {
        uint[] storage z = x;
        z.push(x[1]);
        z.push(x[1]);
    }
    function setPairs(mypair[] memory a, uint k) public {
        x[1] = a[k].bValue;
    }
}
