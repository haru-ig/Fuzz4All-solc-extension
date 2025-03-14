pragma solidity ^0.8.0;
contract G {
    address[] x = [address(0), address(0), address(0)];
    constructor(address[3]) public {
        x[0] = address(0);
        x.push(address(0));
        x[2] = address(0);
    }
}
