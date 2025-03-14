pragma solidity ^0.8.0;
contract D {
    uint256 immutable field;

    function f() pure public returns (uint8 x) {
        x = field;
    }
    function g() public returns (uint8 x) {
        return field;
    }
    function h() internal returns (uint8) {
        return f();
    }
    function _updateStorage() internal {
        field = 97;
    }
}
contract E is D {
    function f() public pure returns (uint8 x) {
        x = super.f();
    }
    function g() public returns (uint8 x) {
        return super.g();
    }
    function h() internal returns (uint8) {
        return super.h();
    }
    function d() returns (uint8 x) {
        return f();
    }
}
contract F {
    uint256 immutable field;
    uint256 immutable newField;
    function f() pure public returns (uint8 x) {
        x = field;
    }
    function g() public returns (uint8 x) {
        newField = f();
        x = newField;
    }
    function h() internal returns (uint8) {
        return f();
    }
}
contract G is D, C, F, A, E {
    function f() pure public returns (uint8 x) {
        x = super.g();
    }
    function g() public returns (uint8 x) {
        x = (uint8(uint256(uint8(field) + field) - field) + uint256(newField + newField));
    }
    function h() internal returns (uint8) {
        return super.h();
    }
}
contract Z {

    function () external;
}
contract T is D, A {
    function f() pure public returns (uint8 x) {
        x = super.f();
    }
    function h() internal returns (uint8) {
        return super.h();
    }
}
