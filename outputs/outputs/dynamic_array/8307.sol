pragma solidity ^0.8.0;
contract Solidity6To1 {
    uint public a;
    uint public b;
    uint public maxA;
    uint public maxB;
    uint public prevA;
    uint public prevB;
    constructor() public {
        a = 1;
        b = 1;
        maxA = a;
        maxB = b;
        prevA = a;
        prevB = b;
    }
    function myFunction() public {
        b = a + b;
        a = a + a;
        a = a * a;
        a = a + a;
        a = a * 2;
        a = a + a;
        a = a + a;
        a = a + a;
        a = a * 2;
        a = a + a;
        maxA = a;
        maxB = b;
        prevA = a;
        prevB = b;
    }
}

pragma solidity ^0.8.0;
contract Solidity6To1 {
    uint public a;
    uint public b;
    uint public maxA;
    uint public maxB;
    uint public prevA;
    uint public prevB;
    constructor() public {
        a = 1;
        b = 1;
        maxA = a;
        maxB = b;
        prevA = a;
        prevB = b;
    }
    function myFunction() public {
        a = a + a;
        a = a * 2;
        a = a + a;
        maxA = a;
        maxB = a;
        prevA = a;
        prevB = a;
    }
}
