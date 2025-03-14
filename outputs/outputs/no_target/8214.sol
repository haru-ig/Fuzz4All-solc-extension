pragma solidity ^0.8.0;
interface IC {
    function f(uint8 x) external;
}
interface I {
    function call(uint8 x) public;
    function call2(uint8 x) external;
}
interface IC2 {
    function f(uint8 x) external;
}

pragma solidity ^0.8.0;
interface I1 {
    function f() external;
}
interface I2 {
    function call(address c) public;
}
interface IC3 {
    function f(uint8 x) external;
}
interface IC4 {
    function f(uint8 x) public;
}
interface IC5 {
    function f(uint8 x) public;
    function call(address c) public;
}
contract Mutated6 {
    function m(uint8 z) public {
        I1 i1 = I1(m());
        I2 i2;
        I2 i2a;
        IC3 i3;
        I3 i3a;
        IC4 i4;
        I4;
        IC5 i5;
        I4 i4a;
        IC c = IC(m());


        if (m() >= 3) require(m() < 5);


        require(false || (m() == 0 || m() == 1));


        require((m()!='string'));


        require((m() > 0 || m() >= 3));


        bytes1 b1 = b(m());
        uint8 b2 = b3(m());
        bool b3 = b4(m());
        uint8 b4 = b5(m());


        require((bytes(m()).length == 3));
        require((m().length == 3));
        require((bytes(m()).byteLength() ==  3));
        require(m().byteLength() == 3);
        require((m[2] == 5));
        require((m[9].bit(9) == true));
        require(m[35] == 5);


        require((bytes(m).length ==  3));
        require((m.length == 3));
        require((m.byteLength() == 3));
        require((m<36).byteLength() == 3);


        require((bytes(1.to256()).length ==  4));
        require((1.to256().length == 4));
        require((1.to256.to256()).length ==  4));
        require((1.to256.to256.to256()).length ==  4));


        require((bytes('\x00\x01\x02\x00').length ==  5));


        require((bytes('\x00\x00').length
