pragma solidity ^0.8.0;
contract C {
    bytes20 b;
    function mutatesArray(bytes20[] memory array) public {
        array[20] = 100;
        array.push(5);
        array.length += 23;
    }
}
