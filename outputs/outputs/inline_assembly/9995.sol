pragma solidity ^0.8.0;
contract G {
    uint8 x;
    uint256 i;
    uint16 e;
    address payable a;
    constructor() {
        i = 0;
        x = 0;
    }
    function someFunc(uint8 a, uint8 b) public {
        call();
    }
    function call() internal {
        i = i + 1;
        i = 0;
        call();
    }
}
pragma solidity ^0.8.0;
contract G {
    uint16 a;
    uint16 x;
    uint8 i;
    constructor() {
        a = 0;
        x = 0;
        i = 0;
    }
    function someFunc(uint8 a, uint8 b) public {
        call();
    }
    function call() internal {
        a = a + 2;
        x = a;
        i = i + 1;
        i = x;
    }
}
