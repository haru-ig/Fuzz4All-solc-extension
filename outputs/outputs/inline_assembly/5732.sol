pragma solidity ^0.8.0;
contract MutatedBlock3Mutation54 {
    uint public _var = 1;
    function test() public view returns(uint) {
        uint a = block.number + 1;
        return a * a - 1;
    }
}

pragma solidity ^0.8.0;
contract Contract2 {
    uint public _var = 1;
    function test() public view returns(uint) {
        uint a = block.number + 1;
        a = block.number;
        return a * a;
    }
}

pragma solidity ^0.8.0;
contract Contract1 {
    uint public _var = 1;
    function test() public view returns(uint) {
        uint b = block.number + 1;
        b = block.coinbase;
        return b * b;
    }
}
