pragma solidity ^0.8.0;
contract Test21 {
    uint[] a;
    uint[] internal b;
    uint public c;
    modifier m1() {
        a.push(this.func() + msg.data + c);
        return;
    }
    function func() public view returns (uint) {
        c = c + 1;
        emit D1(c);
        return 1;
    }
    function a1() public {
        emit D1(a.length);
    }
    function b() private view returns (uint) {
        return 1;
    }
    function test() public {
        a = new uint[](12);
        a[0] = func();
        a[1] = func();
        a[2] = func();
        a[3] = b();
    }
}
