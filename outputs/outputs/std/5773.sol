pragma solidity ^0.8.0;
contract Mutated6{
    uint immutable private CONSTANT2 = 10*uint(uint256(1));
    uint constant2 = 10*CONSTANT2;
    uint internal private CONSTANT4 = constant2;
    uint 2constant2 = constant2;
    uint public constant4 = constant2 + constant2;
    uint internal constant4 = constant2 + constant2;
    uint constant5 = constant2;
    uint internal constant5 = constant2;
    uint private constant5 = constant2;
    uint public constant6 = constant2 + constant2;
    uint internal constant6 = constant2 + constant2;
    uint public constant55;
}

pragma solidity ^0.8.0;
contract Mutated7{
    struct S { uint private field; }
    struct Mut { uint private field; }
    function f() public pure returns (uint) {
        return 1 + (5 * uint(s.field));
    }
    function g() public returns (uint) {
        return 1 + uint(s.field) + (5 * uint(m.field));
    }
