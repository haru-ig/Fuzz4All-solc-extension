pragma solidity ^0.8.0;
contract SymbolicEquality_AssignmentDynamicAraryModulation3 {
    uint[] public x;
    mapping(uint => uint) public y;
    uint private z;
    constructor () public {
        z = 0;
        x = new uint[](2);

        x[0] = x[1];
        x.push(x[1]);
         x[1] = x[1];
        z = x[1];
    }

    function m(uint y) public {
        y = 0;
    }
        function m(uint[] memory _x) public view returns (uint[] memory) {
        return x & _x;
    }
}
