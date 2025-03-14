pragma solidity ^0.8.0;

contract Fake {
    function balanceOf(address _owner) public view returns (uint256 balance) {}
    function transfer(address _to, uint256 _amount) public returns (bool success) {
        return false;
    }
    function transferFrom(address _from, address _to, uint256 _amount) public returns (bool success) {
        return false;
    }
}
