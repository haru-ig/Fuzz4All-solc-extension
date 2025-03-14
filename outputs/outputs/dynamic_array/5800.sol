pragma solidity ^0.8.0;
contract Test1800 {
    uint[] public array;
    constructor () public {
        array = new uint[](0);
    }
    function foo() public pure returns (uint) {
        for(uint i = 0; i < array.length; i++){
            return (array[i]);
        }
    }
}
