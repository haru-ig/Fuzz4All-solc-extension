pragma solidity ^0.8.0;
contract SimpleExample14 {
    struct A {
        function A(uint x) public {
            x+=(uint160(0x1)<<2);
            if (x>>3!= 0x1fffc000000000000000000000000000000000000000000000000000000) {
                revert('Check');
            }
            if (x < uint160(0x10)) {
                revert('Check');
            }
            x <<= 2;
        }
    }
    function doSomething(bytes memory _data) public {
        if (_data.length>0) {
            revert('Check');
        }
        A a;
        if (a.x+=(uint160(0x1)<<2)!= 32) {
            revert('Check');
        }
        if (a.x >> 3!= 0x1fffc00000000000000000000000000000000000000000000000000) {
            revert('Check');
        }
        if (a.x < 32) {
            revert('Check');
        }
        a.x <<= 2;
    }
}
