pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentModulation_V1 {
    uint[] public x1;
    mapping(uint => uint) public y1;
    uint y2 = 42;
    constructor () public {
        x1 = new uint[](2);
        x1.push(x1[1]);
        x1.push(x1[1]);
    }
        function setPairs_V1(mypair[] memory a) public {
        for (uint i = 0; i < 3; i++) {
        x1[1] += y1[i];
        }
    }
    function setPairs_V2(mypair[] memory a, uint k) public {
        for (uint i = 0; i < 3; i++) {
            x1[1] += y1[i];
        }
        x1[1] += y2;
    }
}

pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentModulation_V3 {
    uint[] public x;

    function setPairs(mypair memory a1, uint k);
    constructor () public {
        x.push(x[1]);
        setPairs(a1, 0);
        x.push(x[1]);
    }
}

contract SymbolicEquality_AssignmentModulation_V4 {
    uint[] public x;
    mapping(uint => uint) public y;
    contract mypair { uint aValue; uint bValue; }
    constructor () public {
        x = new uint[](2);
        y.push(x[1]);
        y.push(x[1]);
        x.push(x[1]);
    }
        function setPairs(mypair memory a, uint k) public {
        if (k[0] == 0) {

            a.aValue += x[1];
        } else {
            uint l = (a.bValue + a.aValue) + y[1];
        }
        y.push(l);

        a.bValue = x[1];
    }
}
