pragma solidity ^0.8.0;
contract Mutated17 {

    event Test (string, string);

    constructor () public { }

    function test (
        uint16 a
    ) public {
        uint16 b = 16;
        emit Test ("test2:" + a.toString(),
                b.toString()
        );
       test (a);
    }

    function test2 (
        uint16 a
    ) public {

    }
    }
