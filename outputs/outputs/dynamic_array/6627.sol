pragma solidity ^0.8.0;
contract T8FA_mutator_0xe {
    T8FA_mutator_0xd x;
    function a() public returns (uint256) {
        x.i = 200;
        return x.i;
    }

    function b() public {
        x.i = 205;
    }

    function c() public view {
        x.a;
        x.b;
    }
    function d() public returns (uint256){
        return x.i;
    }

    function e() public payable{
        x.c();
        x.b;
        x.c();
        x.b;
        x.a;
        x.b;
    }
}
