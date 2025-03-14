pragma solidity ^0.8.0;
contract G {
    address[] x = [address(0), address(0), address(0)];
    address[] memory y = [address(0), address(0), address(0)];
    constructor(address[3] memory) public {
        x.push(address(0));
        x.push(address(0));
        x.push(address(0));
        y.push(address(0));
        delete y[0];
        x = y;
    }
}
