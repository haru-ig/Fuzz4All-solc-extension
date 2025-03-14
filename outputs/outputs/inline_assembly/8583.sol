pragma solidity ^0.8.0;
contract Contract {
    function f() public pure returns (uint);

    function g() public pure returns (uint) {    }

    function d() public view returns (uint) {    }

    function c() public view returns (uint) {
        uint res = 5;
        res = res.g();
        while(
            res < f()
        ) {
            res *= 7;
        }
        return res;
    }
}
