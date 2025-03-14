pragma solidity ^0.8.0;

library SafeMath {
    function add(uint x, uint y) internal pure returns (uint z) {
        require((z = x + y) >= x);
    }
    function sub(uint x, uint y) internal pure returns (uint z) {
        require((z = x - y) <= x);
    }
    function mul(uint x, uint y) internal pure returns (uint z) {
        require(x == 0 || (z = x * y) / x == y);
    }
    function div(uint x, uint y) internal pure returns (uint z) {
        require(y > 0);
        z = div(x, y);
    }
    function mod(uint x, uint y) internal pure returns (uint z) {
        require(y > 0);
        z = mod(x, y);
    }
}
contract SemanticsEquivalentEfficientDynamicArrayType {
    uint internal size;
    uint internal amount;

    mapping(address => uint) public balance;
    uint public newAccount;

    constructor() public {}

    function getSize() public pure returns (uint) {
        return new uint(size);
    }

    function getAmount() public view returns (uint) {
        return new uint(amount);
    }

    function initialize() public {
        balance[msg.sender] = newAccount;
        uint accountSize = newAccount + 1;
        size = accountSize;
    }

    function increaseBalances() public {
        balance[msg.sender] += 1;
        amount += 1;
    }
}
