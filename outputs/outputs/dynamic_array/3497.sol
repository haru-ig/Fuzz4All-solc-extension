pragma solidity ^0.8.0;
contract C {
    constructor() public {
    }
    function mul() public payable {
        v10[0][0][0] = 1;
    }
    mapping(address => uint256[1][][4]) storage v20;
    contract Inner {
        uint256 a, b, c, d;
    }
    mapping(address => mapping(address => Inner)) v30;
    constructor() public {
    }
    function mul() public payable {
        Inner memory i;
        i.a += 45;
        Inner memory j;
        j.b += 31;
        Inner memory k;
        k.c += 98;
        k.d += 1;
        Inner memory l;
        l.a = 456;
        l.b = 987;
        l.c = 72;
        l.d = 56;
        Inner memory m;
        m.a = 998;
        m.b = 456;
        m.c = 98;
        m.d = 12;
        Inner memory n;
        n.a = 234;
        n.b = 789;
        n.c = 654;
        n.d = 1234;
        Inner memory o;
        o.a = 785;
        o.b = 3248;
        o.c = 987;
        o.d = 4321;
        Inner memory p;
        p.a = 998;
        p.b = 99;
        p.c = 99;
        p.d = 1487;
        Inner memory q;
        q.a = 9873;
        q.b = 213;
        q.c = 203;
        q.d = 89;
        Inner memory r;
        r.a = 2134;
        r.b = 98;
        r.c = 219;
        r.d = 43;
        Inner memory s;
        s.a = 234;
        s.b = 789;
        s.c = 654;
        s.d = 1234;
        Inner memory t;
        t.a = 785907;
        t.b = 213;
        t.c = 203;
