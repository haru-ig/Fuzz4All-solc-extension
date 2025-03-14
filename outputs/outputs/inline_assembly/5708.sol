pragma solidity ^0.8.0;
contract Mutated1 {
    uint public _var = 1;
    function test() public view returns(uint) {
        uint x;
        x = x - 1;
        x = x / 3;
        x = x * 5;
        return x;
    }
}

pragma solidity ^0.8.0;
contract Mutated2 {
    uint public _var = 1;
    function test() public {
        MutatedBlock9Mutation5 _block9 = MutatedBlock9Mutation5(x);
       _block9.test;
    }
}

pragma solidity ^0.8.0;
contract Mutated3 {
    uint public _var = 1;
    address _a = 0xABdEADdF;
    uint x = 5;
    function test() public {
        _a.call{value: 2000000}(abi.encode{bytes(address(this))}(address(x)));
    }
}

pragma solidity ^0.8.0;
contract Mutated4 {
    uint public _var = 1;
    address _a = 0xABdEADdF;
    uint x = 6;
    function test(uint _v) public {
        uint y = _v + 4;
      _a.transfer(_v);
      y = y / 5;
    }
}

pragma solidity ^0.8.0;
contract Mutated5 {
    uint public _var = 1;
    uint x = 7;
    function test(address _a) public {
      _a = _a;
      uint y = x / 2;
      _a = _a;
    }
}

pragma solidity ^0.8.0;
contract Mutated6 {
    uint public _var = 1;
    uint x = 8;
    function test() public {
    uint* _a = address;
    uint y = 0;
    *(_a + x) = y;
    }
}

pragma solidity ^0.8.0;
contract Mutated7 {
    uint public _var = 1;
    uint x = 3;
    function test() public {
