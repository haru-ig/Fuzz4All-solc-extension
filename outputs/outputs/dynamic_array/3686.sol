pragma solidity ^0.8.0;
contract D {
    uint256   a;
    uint256[100] b;
    function f() public {
        for (uint256 i; i < 100; i++) {
            a;
        }
        a;
    }
}



pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";

contract DummyToken is Ownable {
    constructor() {
        _mint(address(this), 10);
    }
}

interface IERC20 {
    function transfer(address recipient, uint256 amount) external returns (bool);
    function approve(address spender, uint256 amount) external returns (bool);
    functionmint(address to, uint256 value) external returns (bool);
    functiontransferFrom(
        address from,
        address recipient,
        uint256 amount
    ) external returns (bool);
}
