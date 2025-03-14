pragma solidity ^0.8.0;
contract SymbolicEquality_EqualityDynamicAraryModulation {
        mapping(uint => uint) public x;
        mapping(uint => uint) public y;
        uint[] x;
        uint[] y;
        string x;
        string y;
        constructor () public {
        x = new uint[](2);
        x[0] = x[0];
        x[1] = x[0];
        x.push(x[0]);
        uint _a = x[0];
            y = x.push(24);
        y[0] = x[1];
        y[1] = _a;
    }
        function m(uint _x) public view returns (uint[] memory) {
        return x;
    }
}
