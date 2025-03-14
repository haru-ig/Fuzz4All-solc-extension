pragma solidity ^0.8.0;
contract Main2 {
    constructor() public {
        uint data = 10;
    }

    function a(uint[] memory a, uint n) public {
        if (a.length > uint(n)) {
            a.length = n;
        }
    }
}
