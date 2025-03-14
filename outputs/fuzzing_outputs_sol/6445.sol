pragma solidity ^0.8.0;
contract Caller {
    function f() public pure returns(uint){
        return 1;
    }
    function g() public pure returns(uint){
        uint a;
        (a, ) = Caller.f.call();
        return a;
    }
    function h() public pure returns(uint){
        uint a;
        (, a) = Caller.f.call();
        return a;
    }
    function i() public pure returns(uint){
        uint a;
        (a, ) = Caller.g.call();
        return a;
    }
    function j() public pure returns(uint){
        uint a;
        uint b;
        (a) = Caller.g.call{value:1 ether}();
        (b) = Caller.h.call{value:1 ether}(1);
        return a+b;
    }
    function k() public pure returns(uint){
        uint a;
        uint b;
        (,,a) = Caller.g.call{value:1 ether}(1);
        (a, b) = Caller.h.call{value:1 ether}(1);

        (,,,a,b) = Caller.g.call{value:1 ether}(1);
        (a, b) = Caller.h.call{value:1 ether}(1);
        return a+b;
    }
}
