pragma solidity ^0.8.0;
contract Test {
    uint[] public arr;
    function test() public {
        uint[] storage oldStorage = arr;


        uint y = arr.push(10);
    }
}
