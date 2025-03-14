pragma solidity ^0.8.0;
contract DumbStorage {


    mapping(uint256 => uint256) internal balance;
    constructor() {
        balance[uint(address(this))] = 1;
    }

    function call() public pure {
        address payable target = payable(address(0));
        target.transfer(balance[uint(address(this))]);
    }
}

contract LowStorage {
    fallback () internal payable {}
}
