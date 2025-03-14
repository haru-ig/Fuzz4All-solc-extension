pragma solidity ^0.8.0;
interface A {
    function test() external;
}
contract C {
}
pragma solidity ^0.8.0;
contract B is C, A {
    function test() public pure override {
        uint256 x = 11;
    }
}
contract F {
    function f() public pure {
        B b1;
        B b2;
        b1.test();
        c1.test();
        bytes memory mem;
        bytes32 b = bytes32((uint256(mem)));
        uint b3 = bytes4_mem;
        uint128 u = (uint128(2e19));
        uint192 y = uint192((uint256(mem)/1000));
    }
}
