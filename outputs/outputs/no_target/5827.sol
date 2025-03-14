pragma solidity ^0.8.0;
contract C2 {
    constructor() public {
    }
    function setfoo(address caller) public {
    }
    function setaddress(C2 x) public {
    }
    function setuint256(uint256 x) public {
    }
    function setpair(address x,address y) public {
    }
}
contract C {
    address address_C1;
    address address_C2;

    uint256[] a;
    mapping(address => bool) f;
    function f1() public payable {
        address_C1.setfoo(0x0);
        C2 x;
        address_C2.setaddress(x);
        C1.setuint256(0x1000);

        address_C2.setuint256(0x0);
        C1.setuint256(0x0);
        C1.setuint256(0x0);
        C1.setuint256(0x0);
        f[0x0].set(0x1234);
        assert(0x1 == a[0x0]);
        assert(0x2 == a[0x2]);
        assert(0x1 == x.a[0x1]);
        assert(0x2 == x.a[0x3]);
        assert(0x0 == a[0x0]);
        assert(0x0 == a[0x1]);
        assert(0x0 == a[0x2]);
        assert(0x0 == a[0x3]);
        assert(0x1 == C1.f1());
        assert(tx.origin == f[tx.origin]);
        assert(tx.origin == address(0x0));
        assert(tx.origin == address(0x0));
        assert(tx.origin == address(0x0));
        assert(tx.origin == address(0x0));
        assert(f[0x0]);
        assert(!f[0x2]);
        assert(tx.origin == address(address_C1));
        assert(tx.origin == address(address_C1));
        assert(tx.origin == address(address_C1));
        assert(tx.origin == address(address_C1));
        assert(tx.origin == address(address_C1));
        assert(address_C1 == a[0x0]);
        assert(address_C1 == a[0x3]);
        assert(address_C1 == x.a[0x1]);
        assert(address_C1 == x.a[0x0]);
        assert(0x1234
