pragma solidity ^0.8.0;
contract A{
    uint public counter;
    constructor(uint x) {
        counter = x;
        add(20, 3);
    }

    function add(uint x, uint y) private pure returns (uint) {
        return (x + y);
    }

    function incrementMe(address a) public {
        a.delegatecall(abi.encodeWithSelector(this.incrementMe, 2));
    }

    function incrementMe(uint i) public {
        counter += (i * 2);
    }
}
