pragma solidity ^0.8.0;
contract EquivalentOld {
    event Log;
    mapping(address => uint256[]) public x;
    function getAddressArray(uint256 _index) public view returns(address x) {
        return x[msg.sender][_index];
    }
}

pragma solidity ^0.8.0;
contract SlightlyBigger {
    function getAverage() public pure returns(uint256 x) {
        x = 10000;
    }
}
contract NotVeryBig {
    function getAverage() public pure returns(uint256 x) {
        return 10 + 5 + 2;
    }
}
contract A {
    struct B { uint x; }
    function f() public pure returns(B memory) {
        return B(26);
    }
}
contract B {
    struct A { uint x; }
    function g() public pure returns(A memory) {
        return A(16);
    }
}
