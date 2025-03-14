pragma solidity ^0.8.0;
contract Test31 {
    struct A {
        uint8[10] array;
    }
    address[100] public array;
    A public data;
    function f() public {
        A memory a;
        array[0] = a;
        data.array = data.array;
        data.array[1] = a;
    }
}

pragma solidity ^0.8.0;
contract Test32 {
    struct A {
        uint8[10] array;
    }
    A public data;
    function f() public {
        A memory a;
        data.array = data.array;
        data.array[1] = a;
    }
    function g() public {
        A memory a;
        data.array = data.array;
        data.array[0] = a;
    }
}
pragma solidity ^0.8.0;
contract Test33 {
    struct A {
        uint8[10] array;
    }
    A public data;
    function f() public pure {
        A memory a;
        data.array = data.array;
        data.array[1] = a;
    }
    function f2() public pure {
        A memory a;
        data.array = data.array;
        data.array[0] = a;
    }
}
