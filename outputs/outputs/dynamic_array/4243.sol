pragma solidity ^0.8.0;
contract H {
    address[2] x = [address(0), address(0)];
    constructor(address[2] memory) public {
        x.push(address(0));
        x.push(address(0));
    }
    function f() public {
        x[0] = x[0 % 2]  ;
    }
}
