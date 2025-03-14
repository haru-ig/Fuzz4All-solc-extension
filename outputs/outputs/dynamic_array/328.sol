pragma solidity ^0.8.0;
contract R4 {
    uint[] public arr;
    function f() public {
        arr.push(0);
        uint[] memory b = arr;
    }
}
