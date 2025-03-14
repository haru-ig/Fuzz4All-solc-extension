pragma solidity ^0.8.0;


import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/IERC20.sol";

contract Test {
    function multiplyZero() public pure returns (uint256) {

        return IERC20(0).mul(0);
    }
}
