pragma solidity ^0.8.0;

import "./Common.sol";
contract C is ICaller {
    address[] x = [address(0), address(0), address(0)];
    constructor(address[3] memory) public {
        x[1] = address(0);
        x[2] = address(0);
        x[3] = address(0);
    }
}
contract D is C {
    function f() public {
        address[] memory p_addr = [address(0), address(0), address(0)];
        address[] memory p_addr_out = f(p_addr);
        require(p_addr_out[1] == address(0));
    }
}
