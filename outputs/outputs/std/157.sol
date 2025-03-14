pragma solidity ^0.8.0;
contract MintingProgram1 {
    uint internal totalSupply = 10000;
    mapping (address => uint) private balanceOf;
    mapping (address => mapping (address => uint)) private transferableSupply;
    function _mint(uint total) internal {
        totalSupply += total;
        balanceOf[msg.sender] = total;
    }
    function mint(uint total) public {
        _mint(msg.sender, total);
    }
    function _mintIfBigger(uint value, uint total, uint min) internal view {
        require( (balanceOf[msg.sender] >= min) && (balanceOf[msg.sender] + value > total), "Balance < min, or greater than total" );

    }
}
