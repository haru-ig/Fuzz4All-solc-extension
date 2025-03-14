pragma solidity ^0.8.0;

contract Emulator7 {
    uint x;
    mapping(uint256 => int) public mapping1;
    function init() public {
            x = mapping1[1];
    }
    function add(uint x,uint y) public pure returns(uint) {return this.x+y;}
    function write() public {mapping1[3] = 3;}
}


pragma solidity ^0.8.0;

contract Emulator_Add_Mapping {
    constructor() {

    }

    function foo(uint256 key1, int value1) public
    {
        mapping1[key1] += value1;
    }

    mapping (uint256 => int) public mapping1;
}
