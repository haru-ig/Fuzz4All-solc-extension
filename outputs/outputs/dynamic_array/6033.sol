pragma solidity ^0.8.0;
contract Test30020 {
    struct A {
        uint8 b;
        bytes16 c;
    }
    uint8 d;
    struct B {
        A[] elements;
    }
    function h() public returns (A[]) {
        return A[](new bytes16[](5));
    }
    function i() public returns (B) {
        return B(i_storage());
    }
    function i_storage() public pure returns (A[] memory) {
        return [A(1), A(2), A(3)];
    }
}
