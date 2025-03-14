pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract Demo {
    function getBalance(IERC20 mock) public view returns (uint) {
        return mock.balanceOf(address(this));
    }
}

contract DemoReverted {
    function getBalance(IERC20 _mock) public {
        uint bal = _mock.balanceOf(address(this));
    }
}
