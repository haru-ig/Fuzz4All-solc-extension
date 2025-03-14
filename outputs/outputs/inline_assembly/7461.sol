pragma solidity ^0.8.0;
contract NewMutated {
    constructor() {
        x = y;
        y = constant1 + constant2;
    }
}
