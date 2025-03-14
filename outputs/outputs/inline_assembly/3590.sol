pragma solidity ^0.8.0;
contract MutatedSquashGenerationsUsingYul {
    address public a;
    address public b;


    constructor() {
        a = address(3);
        b = address(3);

        a = address(1);
        b = address(1);
    }
}
