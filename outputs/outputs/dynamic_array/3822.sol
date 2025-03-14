pragma solidity ^0.8.0;
contract C {
    bytes20[] b = new bytes20[](4);
    function modifiesArray(bytes20[] memory array) public pure returns (bool) {
        for (uint256 i = 0 ; i < b.length ; i++) {
            bytes20 mem = b[i];
            if (b.length <= 1) {
                assert(false);
            }
            b[i] = mem;
        }
        return true;
    }
}
contract C {
    bytes20[1] b;
    function modifiesArray(bytes20[] memory array) public pure returns (bool) {
        for (uint256 i = 0 ; i < array.length ; i++) {
            bytes20 mem = array[i];
            if (array.length <= 1) {
                assert(false);
            }
            array[i] = mem;
        }
        return true;
    }
}
{
    function a() public {
        B b = new B();
        assert(b.f());
        assert(b.modifiesArray(new bytes20[](4)));
    }
}
library B {
    function f() public pure view {

    }
    function b() public pure view returns (bool) {

    }
    function modifiesArray(bytes20[] memory array) public pure returns (bool) {

    }
}
