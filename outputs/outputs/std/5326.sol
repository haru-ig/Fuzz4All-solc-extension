pragma solidity ^0.8.0;
contract ArrayExample {
    uint[] array;
    function test() public {
        uint x = array[5];
    }
}

pragma solidity ^0.8.0;
contract ArrayExample {
    uint[] array;
    function test() public {
        array[5] = 6;
        array[5] += 1;
        array.length += 1;
    }
}
