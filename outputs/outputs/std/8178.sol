pragma solidity ^0.8.0;
contract Test {
    uint[] memory array;
    function f() public pure{
        uint[] memory memory1 = new uint[](7);
        uint[] memory memory2 = array;
        array = memory2;
        array = memory1;
    }
    function main() public pure {
        div(5,0);
        uint[7] memory memory1 = [100, -1, 2, 1, -4, 300, 96];
        uint[7] memory memory2 = array;
        array = memory2;
        address memory ptr = (array);
        array[4] = 1;
    }
}
