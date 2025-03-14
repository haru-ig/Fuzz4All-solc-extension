pragma solidity ^0.8.0;
contract Test17WithNestedSemanticalEquivalent {
    uint[] _mem;
    uint public length = 0;
    function f() public {
        _mem.push(13);
        _mem.push(17);
    }
}
contract Test17NestedDynamicArraySemanticalEquivalent {
    uint[] public nestedMem;
    function f() public {
        nestedMem.push(13);
        nestedMem.push(17);
    }
}
