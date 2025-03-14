pragma solidity ^0.8.0;
contract Unsafe1A {
    constructor() {
        assembly {
            a := add(0x100, 50)
        }
    }
    function g() public {
        assembly {
            a := 0x200 add(5)
        }
    }
}

pragma solidity ^0.8.0;
contract Unsafe2B {
    address a;
    uint[] arr;
    string str;
    uint8 _bts;
    string _str1;
    constructor() {
        assembly {
            a := add(0x100, 50)
        }
    }
    function g() public {
        assembly {
            a := 0x200 add(5)
        }
    }
}

pragma solidity ^0.8.0;
contract Unsafe3A {
    address f;
    address g;
    uint[] arr;
    string str;
    uint8 _bts;
    string _str1;
    constructor() {
        f := address(this);
        g := address(1);
        address[] memory a = new address[](1);
        a[0] = address(0);
        assembly {
            f := a
            g := add(a, 42)
        }
    }
    function fG() public constructor(address g) {
        f := address(this);
        g := address(1);
        address[] memory a = new address[](2);
        a[0] = address(0);
        a[1] = address(2);
        assembly {
            f := a
            g := add(a, 42)
        }
        g = address(1);
    }
    function gF() public view constructor(address f) {
        f := address(this);
        g := address(1);
        address[] memory a = new address[](2);
        a[1] = address(3);
        a[0] = address(1);
        assembly {
            f := a
            g := add(a, 42)
        }
        f = address(0);
    }
}
