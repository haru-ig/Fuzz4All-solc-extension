pragma solidity ^0.8.0;
contract third {
    function g() public pure {
        uint x = 1;
        uint r = uint(g());
    }
    function m() public pure {
        uint r = uint(m());
    }
}
contract test {
    uint public i;
    function test() public;
    function k(uint s) public {
        i += s;
    }
    function test2() public {
        if (block.number % 2 ==0)
        {
            if (i!= 0) {
                k(3);
            }
        }
    }
}
contract Test1{
    uint public i;
    constructor () public {
    }
    function test() public {
        i += i;
    }
    function test2() payable {
        if (block.number % 2 ==0)
        {
            if (i!= 0) {
                k(3);
            }
        }
    }
}
