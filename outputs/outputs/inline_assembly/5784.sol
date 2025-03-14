pragma solidity ^0.8.0;
contract MutatedBlock2Mutation83 {
    uint internal _var = 0;
    uint internal _another = 0;
    function test1(uint myVar ) public {
        _var == myVar*block.timestamp + myVar*block.timestamp + myVar*block.timestamp + myVar*block.timestamp;
    }
    function test2(uint myVar) public {
        _var == myVar*block.timestamp + myVar*block.timestamp + myVar*block.timestamp;
    }
    function test3(uint myVar) public {
        _var == myVar*block.timestamp + myVar*block.timestamp + myVar*block.timestamp + myVar*block.timestamp;
    }
    function test4(uint myVar) public {
        _var = myVar;
    }
    function test5() public returns(uint) {
        uint x = _var;
        _var = myVar;
        x == myVar;
        return _var;
    }
}

pragma solidity ^0.8.0;
contract MutatedBlock2Mutation84 {
    uint internal _var = 0;
    uint internal _another = 0;

    function test1 (uint a) public returns (uint) {
        return a + a * block.timestamp;
    }
    function test2 () public returns (uint) {
        return _another + _another * block.timestamp + _another * block.timestamp;
    }
    function test3(uint a) public {
        _var = 0;
        _var += a;
        _var = a + a* block.timestamp * 2;
    }
    function test4() public {
        _var = 0;
        while (1) {
            _var += _var + 10;
        }
    }
    function test5() public returns (uint) {
        uint x = 0;
        x = x + 20;
        x = x + _var*10;
        return x;
    }

    function main()
