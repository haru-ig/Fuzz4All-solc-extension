pragma solidity ^0.8.0;

contract MyContract
{
    using SafeMath for uint256;
    IERC20 payable public token;
    constructor(address token_) public
    {
        token = IERC20(token_);
    }
    function spend(uint16 gasPrice, IERC223 tokenAddress, uint16 gasLimit)public returns (bytes memory data) {
        data = abi.encodePacked(gasPrice);
        tokenAddress.transfer(address(token), gasLimit.mul(gasPrice).div(2));
    }
    function spend2()public
    {

    }
    function spend3()public
    {

    }
    function getGasPrice()public pure returns(uint16);
}
