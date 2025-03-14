pragma solidity ^0.8.0;
contract Mutants2 {

    uint x;

    constructor() public {
        x = 5;
    }

    pragma solidity ^0.8.0;
    function set(uint256 _x) public {
        x = _x;
    }
}
