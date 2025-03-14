pragma solidity ^0.8.0;

contract Example19 {
    function example19(address payable _to) public returns(uint256 amount) {
        (amount, ) = address(this).call{value: 20000>(_to));
        return amount;
    }
}
