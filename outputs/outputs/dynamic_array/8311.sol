pragma solidity ^0.8.0;
contract Solidity6To1 {
    uint public a;
    uint public b;
    uint public maxA;
    uint public maxB;
    uint public numRepetitions;
    constructor() public {
        a = 1;
        b = 1;
        maxA = a;
        maxB = b;
        numRepetitions = 1;
    }
    function myFunction() public {
        for (numRepetitions = 1; numRepetitions < 100; numRepetitions++) {
            a = a + a;
            b = b + b;
        }


    }
}

pragma solidity ^0.8.0;
contract Solidity6To1 {
    uint public a;
    uint public b;
    uint public maxA;
    uint public maxB;
    uint public numRepetitions;
    constructor() public {
        a = 1;
        b = 1;
        maxA = a;
        maxB = b;
        numRepetitions = 1;
    }
    function myFunction() public {
        for (numRepetitions = 1; numRepetitions < 100; numRepetitions++) {
            uint[] memory x = new uint[](10);
            for (uint j = 0; j < 10; j++) {
                x[j] = j;
            }
            a = a + a;
            b = b + b;
        }


    }
}
