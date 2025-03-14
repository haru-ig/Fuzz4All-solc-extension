pragma solidity ^0.8.0;
contract Mutate_0025 {
    struct S {
        uint256 foo;
        function bad() pure internal returns (uint256) {
            return 0;
        }
    }
    function bad() internal returns (uint256) {
        S memory mem;
        mem.foo = 0;
        assert(mem.foo < 100);
        return 0;
    }
}
library Check_0026 {
    function bad(uint256 a) internal pure returns (uint256) {
        return 0;
    }
    function good(uint256) internal pure returns (uint256) {
        return 0;
    }
}
