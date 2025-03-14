pragma solidity ^0.8.0;
contract Test17WithoutNested {
    uint[] public _mem;
    uint public length = 0;
    address[] public _mem2;
    uint[] public _mem3;
    uint public length2 = 0;
    uint[] public length3 = 0;
    mapping(address=>uint) public balances;
    function f() public {
        _mem3.push(1);
        _mem3.push(2);
    }
}
contract Test17DynamicArrayRemoval {
    uint32[][] memory arr;
    uint[][] memory arr2;
    uint[][][] memory arr3;
    function f() public {
        for (uint i = 0; i < 1000; i++) {
            arr.push(new uint[](i));
        }

        for (uint i = 0; i < 2000; i++) {
            arr2.push(arr[i]);
        }
    }
}
