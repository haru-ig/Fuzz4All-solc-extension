pragma solidity ^0.8.0;
contract ArrayExample2 {
    uint[] public array;
    uint256 public numElements;
    require(array.length >= 7);
    function test() public {
        array.push(0);
    }
}
