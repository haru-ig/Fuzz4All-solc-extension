pragma solidity ^0.8.0;
contract Test25 {
    struct S {
        uint8[] foo;
        S (uint8[] memory a) public {
            unchecked {
                foo = a;
            }
        }
    }
    function f() public pure returns(uint8[] memory) {
        return (S(foo).foo);
    }
}
