pragma solidity ^0.8.0;
contract E2 {
    function f(uint256 x) internal pure {
        uint c = x < 0? czero : uintnotc;
        assembly {
            return(c)
        }
    }
    function g() public view {
        bytes memory b;
        bytes32 c;
        bytes32 d;
        bool e;
        bool f;
        address g;
        assembly {
            b := mload(0x40)
            c := mload(0x4200)
            d := mload(0x420a)
            e := eq(d, add(c, 0))
            f := eq(b, 0)
            g := and(c, 0xFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)
        }
    }
}







#include <cstdio>
#include <cstdlib>
#pragma warnings(disable 622)
#include "E1.sol"
#include "E2.sol"
const uint256 czero = 0;
const uint256 uintnotc = 0xFFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
#pragma optimize("O3")

int mains(int argc, char* argv[]) {
    bool fail;
    fail = false;
    try {
        E1 _E1;
        _E1.h();
        E1 i(a);
        fail = true;
        i.h();
    } catch (error) {
        fail =
