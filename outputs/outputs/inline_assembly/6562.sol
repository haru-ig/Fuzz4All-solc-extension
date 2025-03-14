pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample82 {
    uint256 a;
    uint256 b;
    uint256 c;
    uint256 d;
    uint256 e;
    object o;
    constructor() {
        a = 0;
        b = ~a;
        c = c + a;
        d = d + b;
        e = e + c;
    }
    function doSomething(address s) public {
        o = s;
        a = a + 1;
        b = ~a;
        c = c + a;
        d = d + b;
        e = e + c;
    }
    function callMethod(address o_addr, string memory s) public {
        o_addr.call(abi.encodeWithSignature("myMethod(string)", s));
    }
    function myMethod(string memory s) public {
        o.doSomething();
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample83 {
    uint256 a;
    uint256 b;
    uint256 c;
    uint256 d;
    uint256 e;
    event Emitted(uint indexed a_, string indexed b_, address indexed c_, bool indexed d_);
    event Emitted3(address addr, uint indexed a_, string indexed b_, bool indexed d_);
    constructor() {
        a = 0;
        b = ~a;
        c = c + a;
        d = d + b;
        e = e + c;
    }
    function doSomething(address s) public {
        o = s;
        a = a + 1;
        b = ~a;
        c = c + a;
        d = d + b;
        e = e + c;
        emit Emitted(a, "", o, true);
        emit Emitted3{value: 10, abiEncoded: [o]}(o, a, "", true);
    }
    function callMethod(address o_addr, string memory s) public {
        o_addr.call(abi.encodeWithSignature("myMethod(string)", s));
    }
    function myMethod(string memory s) public
