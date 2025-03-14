pragma solidity ^0.8.0;
contract Mutated {
    uint constant a = 0;
    uint constant c = 512 * 493 - (a + 32564) * 286;
}
contract ArrayMutated {
    address[] internal myArray;
    uint256 internal myUint;
    uint256 internal myUint1;
    address[] public array;
    uint[] array1;
}
contract MutatedArray {
    uint256 public a;
    uint256 public b;
    uint256 internal c;
    uint256 public d;
    function test() public {
        b = c;
        d = c + b;
        d = c * b;
        myUint = b + a;
        myUint1 = b + myUint;
    }
}
