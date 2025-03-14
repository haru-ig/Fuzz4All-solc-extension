pragma solidity ^0.8.0;
contract simple_abi4 {
    function f() public pure returns (uint8) {
        return 1;
    }
    function g() public pure returns (uint<16>) {
        return 1;
    }
    function h() public pure returns (uint<32>) {
        return 1;
    }
    function i() public pure returns (uint<48>) {
        return 1;
    }
    function j() public pure returns (uint<64>) {
        return 1;
    }
}
contract abigen {
    simple_abi3 simpleContract3;
    simple_abi4 simpleContract4;
    constructor () {
        simple_abi3 simpleContract3;
        simple_abi4 simpleContract4;
    }
    function f() public view returns (uint8) {
        return simpleContract3.f();
    }
    function g() public view returns (uint32) {
        return simpleContract3.g();
    }
    function simpleContract3_get() public view returns (uint8) {
        return simpleContract3.f();
    }
    function simpleContract4_get() public view returns (uint32) {
        return simpleContract4.g();
    }
}
