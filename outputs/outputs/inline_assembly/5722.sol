pragma solidity ^0.8.0;
contract MutatedBlock6Mutation54 {
    uint public _var = 1;
    function test() public view returns(uint) {
        uint c_var = block.number;
        return block.number + c_var;
    }
}

pragma solidity ^0.8.0;
contract MutatedBlock4Mutation54 {
    uint public _var = 1;
    function test() public view returns(uint) {
        uint b_var = block.number;
        b_var = block.timestamp * 1111;
        return block.timestamp / b_var;
    }
}

pragma solidity ^0.8.0;
contract MutatedBlock44Mutation54 {
    uint public _var = 1;
    function test() public returns (uint) {
        uint c = 10;
        while (true) {
          c += block.number;
        }
    }
}
