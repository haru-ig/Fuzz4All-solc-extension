pragma solidity ^0.8.0;
contract C {
    function test() public  {
        C c = new C(address(this), uint128(2));
    }
}
