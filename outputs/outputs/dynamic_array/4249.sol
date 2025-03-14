pragma solidity ^0.8.0;
contract G {
    address[] x = [address(0)];
    constructor(address memory) public {
        x.push(address(0));
    }
}
