pragma solidity ^0.8.0;
contract K {
    function m(uint _x) public pure {
    }
    function m1(uint _x) public pure {
    }
}
contract R {
    function g() public pure {
    }
}
contract S {
     struct S1{};

    address public a;
    function getA(S1 memory s) public pure returns (address) {
        return address(a);
    }
    function doS(S1 memory s) public pure {
        a = address(s);
        return;
    }
}
contract test {
    S1 memory s;
    function testme(S memory s) public {
        S1 memory s1;
        s = s1;
        K memory k = K(S(s, s1));
        R memory r = R(s1, s1);
        S memory s2;
        k = K(S(s, s2));
        S memory s3 = S(s, S1(s));
        S memory s4;
        k = K(S(s, s4));
        r = R(S(S1(s), s), S1(s));
        r = R(S(S1(s), S1(s)));
        S memory s5 = S(S1(s), s);
        S memory s6 = S(S1(s), s);
        S memory s7 = S(S1(s), s);
        S memory s8 = S(s, s);
        S memory s9 = S(s, s);
        s8 = s7;
        S memory s10 = S(S1(s), S1(s));
        S memory s11 = S(S1(s), S1(s));
        S storage s10 = s11;
        S memory s12 = S(S1(s), S1(s));
        S memory s13 = S(S1(s), S1(s));
        S storage s12 = s13;
        S memory s14 = S(S1(s), S1(s));
        S memory s15 = S(S1(s), S1(s));
        S storage s14 = s15;
        S memory s16 = S(S1(s), S1(s));
        S1 storage s16 = S1(S1(s), S1(s));
        K storage k1 = K(k1);
        R storage r1 = R(k1, r1);
        S storage s11 = s11;
        S storage s1261 = s;
    }
}
