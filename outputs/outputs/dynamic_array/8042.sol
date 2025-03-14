pragma solidity ^0.8.0;
contract Test49Mutant2 {
    mapping (uint => uint) public z;
    constructor() public {
        z = mapping (uint => uint)(a => a + 1);

    }
    function map1() public {
        z[2] = 42;
    }
}
