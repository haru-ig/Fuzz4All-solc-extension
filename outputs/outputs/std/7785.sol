pragma solidity ^0.8.0;
contract MutatedScript {
    function mutate(mut uint[] storage array) public {
        array[0] = 123;
        array[1] = 456;
        require(array[2] == 123, "FAIL");
    }
}
