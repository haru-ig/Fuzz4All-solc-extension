pragma solidity ^0.8.0;
contract Test68 {
    uint[] public array;
    function x() public {
        array.push(address(this));
    }
    function y() public {
        array.push(32,82);
        array[0] = 43;
        array = new uint[](3);
    }
}
