pragma solidity ^0.8.0;
contract MutatedBlock9Mutation49 {
    uint public _var = 1;
    function test() public view returns(uint) {
        uint x = block.number;
        x += 1;
        return x;
    }
}
pragma solidity ^0.8.0;
contract MutatedBlock9Mutation48 {
    uint public _var = 1;
    function test() public view returns(uint) {
        uint x = block.number;
        uint y;
        y += 1;
        y = y + 10;
        return x + y;
    }
}
contract MutatedBlock9Mutation47 {
    uint public _var = 1;
    function test() public view returns(uint) {
        uint x = block.number;
        uint y = 0;
        uint z = 10;
        x = x + 1;
        x = x + 2;
        x = x - 1;
        return x + y + z;
    }
}
pragma solidity ^0.8.0;
contract MutatedBlock9Mutation46 {
    uint public _var = 1;
    function test() public view returns(uint) {
        uint x = block.number;
        uint y = 0;
        uint z;
        x = x + 1;
        x = x + 2;
        x = x + 3;
        x = x + 4;
        x = x + 5;
        x = x - 1;
        x = x + 2;
        return x + y - z;
    }
}
contract MutatedBlock9Mutation45 {
    uint public _var = 1;
    function test() public view returns(uint) {
        uint x = block.number;
        uint z = 100;
        x = x + 1;
        x = x + 2;
        x = x + 3;
        x = x + 4;
        x = x + 5;
        x = x - 3;
        x = 1 + 1 + 3 - 3;
        uint y = x - 1;
        x = z + 4 + 5 - y;
        x = x + 1 + 2;
        return x + z - z + y + 7 - y;
    }
}
