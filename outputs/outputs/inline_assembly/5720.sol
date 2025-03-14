pragma solidity ^0.8.0;
contract MutatedBlock9Mutation52 {
    uint public _var = 1;
    function test() public view returns(uint) {
        uint x = block.timestamp;
        x = block.number;
        return x + 10;
    }
}
contract MutatedBlock9Mutation53 {
    uint public _var = 1;
    function test() public view returns(uint) {
        uint x = block.timestamp + 10;
        return x;
    }
}
contract MutatedBlock9Mutation54 {
    uint public _var = 1;
    function test() public view returns(uint) {
        uint x = block.number / block.timestamp;
        if (x > 1)
            return x;
        else
            return x + 10;
    }
}
contract MutatedBlock9Mutation55 {
    uint public _var = 1;
    function test() public view returns(uint) {
        uint x = block.timestamp - 10;
        if (x > 1)
            return x;
        else
            return x + 10;
    }
}
contract MutatedBlock9Mutation56 {
    uint public _var = 1;
    function test() public view returns(uint) {
        uint x = block.timestamp;
        uint y = block.timestamp;
        uint z = block.number;
        uint w = block.number;
        uint v = z * z;
        if (x > block.timestamp)
            return x;
        else
            return x + 10;
    }
}
