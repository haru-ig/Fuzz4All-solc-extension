pragma solidity ^0.8.0;
contract Y {
}
contract X {
    constructor (uint a) {   }

    contract Y {
        function fooX() view returns (uint) {
            return X(a).foo();
        }
    }

    function foo() view returns (uint) {
        return a().foo();
    }
}
contract K {
    constructor(int a) public {
        d();
    }
    function d() internal {
        f();
    }
    function f() public {
        g();
    }
    function g() public {
        h();
    }
    function h() public {
        i();
    }
    function i() public { }
}


pragma solidity ^0.8.0;
contract I {}
contract E {
    constructor (I a) public {   }
}
contract F {
    constructor () {   }
}
pragma solidity ^0.8.0;
contract A {
    constructor (E e) public {
        i(e);
    }
    function i(E e) public {
        c(e);
    }
    function c(E e) public {
        j(e);
    }
    function j(E e) public {
        d();
        k();
    }
    function d() public {   }
    function k() public {   }
}
