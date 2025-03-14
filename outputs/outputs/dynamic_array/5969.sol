pragma solidity ^0.8.0;
contract Test296042 {
    uint x[] = [1339453];

    struct Struct {
        uint member;
    }

    function myFunction() public {
        uint[] memory y;
        Struct memory z;
        x = y;
        x.push(789);
        z.member = x;
    }
}
