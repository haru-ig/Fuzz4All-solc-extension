pragma solidity ^0.8.0;
contract R{
    uint[] public arr;
    function f() public {
        arr.push(0);
        arr.push(1);
        bool ok = arr.length == 2;
    }
}
