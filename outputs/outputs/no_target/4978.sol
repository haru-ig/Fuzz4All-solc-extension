pragma solidity ^0.8.0;
contract C { uint a; } contract D{ function foo(uint256 x) { uint c = a; uint d = x; uint r; uint128 s; bytes memory b; string s1; bytes1[] memory b1; } function inner (uint n) public pure returns (uint r) { s = n; b = n * n; b1 = n * n; bytes tmp = "abc"; bytes memory t1; bytes[] memory b2; } function bar (C x) public view returns(uint r) { r = x.f(x.a) + x.f(x.b) + x.f(x.c) + x.f(x.d);} }
contract E { function foo() public { uint z; uint128 u; A a; B b; BC bc; CA c; CB cb; CB cc; C cb; } function f() public view returns(uint r{assert(r < 5); }) { return x; } function g() public pure returns(uint r) { r = 5;} }







/* 0x03C2C32039139194E5C404a1608C10E23eA3557e

#pragma solidity ^0.8.0;

pragma experimental ABIEncoderV2;
import 'hardhat/console.sol';

contract A2 {


    mapping (address => uint) nums;

    function get(address _addr) public view returns (uint _val) {
        return nums[_addr];
    }

    function () public payable {
        console.log(_msgSender());
    }

    function transferAndCall (address to,
                                uint _value,
                                bytes memory _data,
                                bytes memory _extraData,
                                uint deadline,
                                uint8 v,
                                bytes32 r,
                                bytes32 s)

        public payable
        {

            (bool success, bytes memory ret) = to.call{value:_value}(_data
