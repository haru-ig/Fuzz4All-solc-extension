pragma solidity ^0.8.0;
contract HelloWorld2 {

    address public owner;
    uint public value;
    bool public flag = true;

    uint public constant ONE = 1;

    constructor(address _owner, uint _value)  public {
        require(address(uint160(_owner) > 0), "zero address");
        require(_value > 0, "zero value");
    }

    function add(uint a, uint b) public pure returns (uint) {
        uint z = ((a + b) % 100000) + ONE;
        uint hi = (uint160(z) * uint160(z)) >> 32;
        require(hi < (2 ** 256) - 1, "overflow");
        return z;
    }

    function sub(uint x, uint y) public pure returns (uint) {
        return add(x, (~y) + 1);
    }
}
