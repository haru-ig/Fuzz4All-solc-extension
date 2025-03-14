pragma solidity ^0.8.0;
contract O{
    uint constant x = 1;
    uint constant y = 2;
    function f(uint a, bool b) internal pure returns (uint, bool){
        check(b);
        return (a, b);
    }
    function g(uint a, bool b) internal pure returns (uint, bool, string memory){
        ( uint, bool) temp = O.f(a, b);
        return (temp[0], temp[1], 'hi');
    }
    function check(bool b) internal pure {}
}

pragma solidity ^0.8.0;
library O{
    uint constant x = 1;
    uint constant y = 2;
    function g(uint a, bool b) internal pure returns (uint, uint, bool){
        check(b);
        return (x + y - 42, w(a), b);
    }
    function w(uint a) public pure returns(uint){return a;}
    function g(uint a, bool b, string memory s) internal pure returns (uint, uint, bool){
        ( uint, uint, bool) temp = O.g(a, b);
        string memory memory1 = 'hello';
        return (temp[0], temp[0], temp[1], memory1);
    }
    function foo() public pure returns(string memory){return 'Hello World! ';
    }

}
