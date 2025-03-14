pragma solidity ^0.8.0;
contract Mutate {
    function mutate(uint arrayLength, uint[] storage _arr) public {
        _arr.push(arrayLength);
    }
    function mutate2(uint arrayLength, uint256[] storage _arr) public {
        _arr.push(arrayLength);
    }
}

pragma solidity ^0.8.0;
contract ContractGenerate {
    uint a;
    uint[1] b;
    constructor () public {
        a = 1;
        b = new uint[](4);
    }
}
