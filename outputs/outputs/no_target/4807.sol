pragma solidity ^0.8.0;
contract C { bytes32 a; constructor() public {a = bytes32(uint256(uint8(0x3)));} }
contract C_2 { bytes32 a; constructor() public {a = bytes32(uint256(uint8(0x3)));} }

pragma solidity ^0.8.0;
contract D { bytes32 a; constructor() public { a = bytes32(uint256(uint8(0x3))); } }
contract D_2 { bytes32 a; constructor() public { a = bytes32(uint256(uint8(0x3))); } }
contract Test {
    uint[] y;

    B b = new B();
    B_2 b2 = B_2({value: 3500});
    C c = new C();
    C_2 c2 = C_2({value: 3500});
    D d = new D();
    D_2 d2 = D_2({value: 3500});
    y.push(uint128(22));
    y.push(uint160(uint160(100)));
    y.push(uint256(uint8(0x3)));
    y.push(uint256(uint8(0xc)));
    y.push((uint160(uint160(100))));


    (b, b2, c, c2, d, d2).push.apply((b2, c2, d2,));

    y.push(b); y.push(b2);
    y.push(b.a);
    y.push(c); y.push(c2);
    address x = address(b); address y2 = address(b2);

    bytes32 x3 = x.a;

    y.push(x.a);

    y.push(x.a.of());

    bytes32 x = bytes32(uint256(uint160(100)) +
