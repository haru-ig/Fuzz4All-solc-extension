pragma solidity ^0.8.0;
contract GenesisUpgrade {

    uint256 public immutable MIN_PRICE;
    uint public MAX_PRICE;

    constructor() public {
        MIN_PRICE = 10;
        MAX_PRICE = 100;
    }

    modifier min(uint _x) {
        require(msg.value >= _x);
        _;
    }

    function get(uint _num) public view min(MIN_PRICE) {
        return _num;
    }
}
