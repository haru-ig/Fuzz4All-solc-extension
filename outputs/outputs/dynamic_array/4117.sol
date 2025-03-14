pragma solidity ^0.8.0;
contract B {
    uint[] array;
    uint constant c = 1;
    function f() public {
        array.push(1);
        c--;
        array.push(1);
        c--;
    }
}

contract Test {

    function test() public {
        uint[] memory x = new uint[](0);
        bool result = (x[1] == 1);
        require(result);
    }
}
