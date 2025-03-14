pragma solidity ^0.8.0;
contract Test {
    uint[] memory arr;
    function test() public {
        uint[] memory newStorage = new uint[](6);
        newStorage[0] = 1;
        newStorage[1] = 2;
        newStorage[2] = 3;
        newStorage[3] = 4;
        newStorage[4] = 5;
        newStorage[5] = 6;
        arr.push(0);
        arr.push(1);
        arr.push(2);
    }
}
