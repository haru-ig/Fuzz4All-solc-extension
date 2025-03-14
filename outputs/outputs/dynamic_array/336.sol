pragma solidity ^0.8.0;
contract R{
    bytes32[] public arr;
    function f() public {
        arr.push(bytes32(1));
        arr.push(bytes32(34));
        bool ok = arr.length == 2;
    }
}
