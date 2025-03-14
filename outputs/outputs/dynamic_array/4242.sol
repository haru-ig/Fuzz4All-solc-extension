pragma solidity ^0.8.0;
contract G {
    address[] x = [address(0), address(0)];
    constructor(address[7] memory) public {
        x[0].transfer(x[1], 0);
        x[2].transfer(x[0], 0);
        x.push(address(0));
    }
}
