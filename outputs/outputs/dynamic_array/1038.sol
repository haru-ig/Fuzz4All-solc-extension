pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
interface IERC20 {
    function balanceOf(address account) external view returns (uint256);
    function transfer(address recipient, uint256 amount) external returns (bool);
    function allowance(address owner, address spender) external view returns (uint256);
    function approve(address spender, uint256 amount) external returns (bool);
    event Transfer(address indexed from, address indexed to, uint256 value);
}
contract UsingCalldataFunctions {
    IERC20 public immutable _token;
    constructor (address token) {
        IERC20(token).transfer(address(this), 1000);
    }
    function () public payable {
        _token.transfer(msg.sender, 1);
    }
}
