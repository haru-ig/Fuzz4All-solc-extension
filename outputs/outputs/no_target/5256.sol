pragma solidity ^0.8.0;

pragma solidity ^0.8.0;
contract MutatedMappingBytesStrings {
    event Emitted(bytes3 key, bytes3 val);
    struct BytesStringsKeyVal {
        bytes3 key;
        bytes3 val;
    }
    mapping(bytes3 => BytesStringsKeyVal) public map;
    function set(bytes3 key, bytes3 val) public {
        map[key].val = val;
        emit Emitted(key, val);
    }
}
pragma solidity ^0.8.0;
contract MutableTypes {
    event Emitted(uint32 a, uint256 b);
    struct A { uint32 a; }
    struct B { uint256 b; }
    event Emitted2(A a, B b);
    A a;
    B b;
    A getA() public view returns (A) {
        return a;
    }
    function getAB() public view returns (A, B) {
        return (a, b);
    }
    function getASub() public returns (uint256) {
        return a.a;
    }
    function getBSub() public returns (uint32) {
        return b.b;
    }
    function set() public {
        a.a = 123;
        b.b = 456;
        emit Emitted(111, 222);
        emit Emitted2(a, b);
    }
}
pragma solidity ^0.8.0;
contract MutatedMethods {
    event Emitted(uint32 a);
    struct A { uint32 a; }
    event Emitted2(A a);
    A a;
    A() public {
        a = A(444);
    }
    function getA() public view returns (A) {
        return A(a.a);
    }
    A set() public {
        emit Emitted(111);
        emit Emitted2(A(b.a));
    }
}
pragma solidity ^0.8.0;
contract AllMutations {
    event Emitted(uint32 a);
    struct A { uint32 a; }
    event Emitted2(A a);
    A a;
    A() public {
        a = A(444);
    }
    function getA() public view returns (A) {
        return A(a.a);
    }
    function setA() public {
        emit Emitted(111);
        emit Emitted2(a);
    }
    function reset() public {
        a.a = 4444;
    }
    function mutate() public {
        a.
