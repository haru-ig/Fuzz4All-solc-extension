pragma solidity ^0.8.0;
contract Mutate8 {
    uint public initialbalance = 0;
    uint public constant multiplier = 2;
    constructor() {
    initialbalance = balance() * multiplier;
    require(initialbalance >= 101);
    }
    function balance() internal view returns (uint256) {
    return initialbalance;
    }
}

pragma solidity ^0.8.0;
contract Mutate9 {
    uint public initialbalance = 0;
    uint public constant multiplier = 2;
    bytes memory public constant data = "0x6570616b65700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constructor(uint _data) {
    initialbalance = balance() * multiplier;
    require(initialbalance >= 101);


    }
}
