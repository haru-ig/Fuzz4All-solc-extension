pragma solidity ^0.8.0;
contract Test32 {
    uint[] public dynArr;
    function f() public {
        uint32[] memory arr = [ uint32(-1)];
        dynArr = arr;
        dynArr[0] = dynArr[0] + 1;
    }
}
