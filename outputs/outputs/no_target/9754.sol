pragma solidity ^0.8.0;

import "ITokenV2.sol";

contract TestERC20Interface {
    ITokenV2 public token;

    function setToken(address x) public {
        token = ITokenV2(x);
    }
}
