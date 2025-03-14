pragma solidity ^0.8.0;

contract SymbolicEquality_AssignmentDynamicAraryModulation {
    uint[] public x;
    uint[] immutable p;
    constructor () public {
        uint immutable zero = 0;
        x = new uint[](2);
        x[zero] = p;
        x[zero] = p;
        zero = zero.add(1);
        x.push(zero);
    }
}
contract Test {
    uint[] memory x;
    constructor () public {
        uint immutable zero = 0;
        x.push(zero);
        uint[] memory z = x;
        x.push(z);
    }
    function f() public view  returns (uint) {
        return x.length;
    }
    function test() public returns (uint) {
        uint a, b;
        return a = 0, b = 1, a.add(1).sub(1), b = a.sub(1, b);
    }
    function test2() public returns (uint) {
        uint[] memory z;
        return x.push(z).push(a);
    }
        function g() public view returns (uint[]) {
        uint[] memory z;
        return x.push(z).push(b);
    }
}
