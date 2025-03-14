pragma solidity ^0.8.0;
contract Main {
    uint256[] internal arr;
    constructor () public {
        uint256 x = 0;
        while (x < 852982) {
            x = x + 2;
        }
        arr.push(uint256(address(this)));
        arr.push(uint256(address(this)));
        arr.push(uint256(address(this)));
        arr.push(uint256(address(this)));
    }
}
