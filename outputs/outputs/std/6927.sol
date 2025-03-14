pragma solidity ^0.8.0;
contract Mutation_FunctionCaller7 {
    constructor() public {
        uint128 a = 0;
    }
    function removeLastElement(uint128 array_param) public {
        uint128 last = array_param[uint128((array_param.length - 1))];
        last = last - 1;
        array_param[uint128((array_param.length - 1))] = 0;
        array_param[uint128((array_param.length - 1))] = last;
    }
}
