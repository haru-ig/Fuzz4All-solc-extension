pragma solidity ^0.8.0;
contract MutatedBlock5Mutation54 {
    uint public _var = 1;
    function test(){
        uint c_var = block.number;
        block.timestamp++;
        return c_var + block.timestamp / 1;
    }
}
contract MutatedBlock54Mutation54 {
    uint public _var = 1;
    function test(){
        uint b_var = block.number;
        b_var++;
        b_var = 10;
        return 10 * block.timestamp;
    }
}
contract MutatedBlock146534Mutation54 {
    uint public _var = 1;
    function test(){
        uint b_var = block.number;
        b_var = 10;
        b_var = 10 + block.timestamp;
        return 10;
    }
}
