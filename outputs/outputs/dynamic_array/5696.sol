pragma solidity ^0.8.0;
contract Test79 {
    uint[] internal arr;
}

contract Test80 {
    struct S{uint b;uint[6][7][3]c;}
    S s;
    function f() public {
        s.c[2].b = 7;
    }
}


contract Test81{
    function g(uint) external pure{
        uint[] memory arr = new uint[](2);
        arr.push(7);
    }
}
contract Test82{
    struct TestStruct{uint a;uint[] b;uint c;}
    TestStruct s;
    function h() public {
        uint[] memory arr = new uint[](2);
        arr[0] = 7;
        s.b.push(arr);
        s.c = 7;
    }
}

contract Test83{
    function i(uint) public payable{
        uint[] memory arr = new uint[](2);
        arr.push(7);
    }
}
contract Test84{
    function j(uint) public view{
        uint[] memory arr = new uint[](2);
        arr[0] = 7;
    }
}
contract Test85{
    function k(uint) public pure{
        uint[] memory arr = new uint[](2);
        arr.push(7);
    }
}
contract Test86 {
    struct S {
        uint[] b;
        uint c;
    }
    s.b = new uint[](2);
    s.b[0] = 3;
    s.b[1] = 4;
    s.c = 5;
    function f() public pure {
        uint[] memory arr = new uint[](2);
        arr.push(7);
        return s.b[0];
    }
}
contract Test87
