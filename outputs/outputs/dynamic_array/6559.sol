pragma solidity ^0.8.0;
contract T9ES_mut7 {
    T9ES_mut6 t;
    function f1() public {
        t.a.push(t.a.length);
    }
    function f2() public {
        t.a[t.a.length - 1]++;
    }
    function f3() public {
        t.a.push(10);
    }
    function f4() public {
        t.a.push(t.a.length);
    }
    function f5() public {
        t.a.pop();
    }
    function f6() public {
        t.a.pop();
    }
    function f7() public {
        t.a.pop();
    }
    function f8() public {
        t.a[1] = t.a.length;
    }
    function f9() public {
        t.a[1] = t.a.length;
        t.a[t.a.length] = 10;
    }
    function f10() public {
        t.a[1] = 0;
    }
    function f11() public {
        t.a[1] = t.a.length;
    }
    function f12() public {
        t.a[1] = t.a.length*2;
    }
    function f13() public {
        t.a[1] = t.a.length - 2;
    }
    function f14() public {
        t.a[2] = t.a.length;
    }
    function f15() public {
        t.a[3] = t.a.length;
        t.a[4] = t.a.length;
    }
}


pragma solidity ^0.8.0;
