pragma solidity ^0.8.0;
contract Mutated5{
    uint[] public a;
    address public b;
    bytes32 private d;
    Mutated5() public{}
    Mutated1.Mutated1(Mutated6 _a, bytes32 _b, Mutated6 _c) public{
        a[0] = 1;
        a[0]++;
        a[1] = _a;
        b = address(0);
    }
    function mutated32() public returns (uint) {
        return a[0];
    }
    function mutated33() public returns (uint) {
        a[0]++;
        return a[1];
    }
}
