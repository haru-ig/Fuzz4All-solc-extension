pragma solidity ^0.8.0;
contract Test18WithBadNestedDynamicArr {
    uint public length = 0;
    uint[] public _mem;
    function f() public {
        _mem.push(13);
        _mem.push(17);
    }
}
contract Test18WithBadNestedDynamicArr2 {
    uint[] public _mem;
    uint public[] public nestedMem;

    function f() public {
        _mem.push(13);
        _mem.push(17);
    }
}
