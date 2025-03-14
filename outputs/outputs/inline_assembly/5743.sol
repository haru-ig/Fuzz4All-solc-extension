pragma solidity ^0.8.0;
contract MutatedBlock2Mutation75 {
    uint public _var = 1;
    function test1() public view returns (uint) {
        bool isGrounded;
        uint e = block.timestamp*block.timestamp;
        if (isGrounded = e > block.timestamp) {
            return block.timestamp + e;
        }
        return block.timestamp + e;
    }
    function test2() public view returns (uint) {
        bool isGrounded;
        uint e = block.timestamp*block.timestamp + block.timestamp;
        if (isGrounded = e > block.timestamp) {
            return block.timestamp + e;
        }
        return block.timestamp + e;
    }
    function test3() public view returns (uint) {
        bool isGrounded;
        uint e = block.timestamp*block.timestamp + block.timestamp + block.timestamp;
        if (isGrounded = e > block.timestamp) {
            return block.timestamp + e;
        }
        return block.timestamp + e;
    }
}

pragma solidity ^0.8.0;
contract MutatedBlock2Mutation82 {
    uint public _var = 1;
    function test1() public view returns (uint) {
        uint e = block.timestamp + 1e18;
        return block.timestamp + e;
    }
}
