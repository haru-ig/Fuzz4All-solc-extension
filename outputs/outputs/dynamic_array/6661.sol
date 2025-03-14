pragma solidity ^0.8.0;
contract T8FA_2 {
    struct Struct1{
        uint z;
        uint xx;
        uint w;
        A[] da;
    }
    struct A {
        string a;
        string b;
        string c;
        string d;
    }
    uint val;
    uint val1;
    Struct1 s;
    function test(uint s) public {
        a.s="";
        uint i=val;
        s.xx=val1;
        a.s="";
        a.w=s.xx;
    }
    function test1(uint w) public {
        uint i;

        a=A("f0", "f1", "f_b", "f2");
        s.da.push(A("f3", "f4", "f_b", "f_d"));
        if (a.s="f5") {
            s.da.push(A("f_b", "f6", "f_b", "f_d"));
            if(a.s!=""|s.da[1].d!="f7") {
                _;
            }
            a.w=0;
            if(s.da[1].c!="") {
            a.w=val;
            s.da[i].a="f11";
            i=val;
            s.da[i].b="";
            _;
            }
            if (a.s!= "test") {
                _;
            }
            _;
        }
        if(a.s=""|w=val1) {
            s.da[1].d="";
        }
        if (a.s == "") {
            a.w=0;
            a.s="Test";
            if (a.s!= "") {
                s.da[1].c="";
                i=val;
                while (w-- > 10) {
                    i = i + val;
                    a.w = a.w + i;
                    if (a.w > val1) {
                        _;
                    }
                }
                if (a.s!= "") {
                    s.da.push(A("f_b", "f_b", "f_b", "f_b"));
                }
                if (s.da.length!= 2) {
                    _;
                }
            }
            s.da[1].b = "";
        }
    }
}
