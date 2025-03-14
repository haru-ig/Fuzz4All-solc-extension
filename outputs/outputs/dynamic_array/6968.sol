pragma solidity ^0.8.0;
contract Test8 {

    modifier test() {
        bytes32[][] memory i;

        i[1][0] = 20;

        if (a[1][0]!= 20) revert();
        return;
    }
    bytes32[][] a;
    constructor() {
        a[1][0] = 100;
        a[1][1] = 200;
    }
    function s() public pure returns (uint) {
        return 0;
    }
}

pragma solidity ^0.8.0;
contract Test10
{
    uint8[] a;
    constructor() {
        a[0] = 1;
        a[1] = 2;
    }
    function update () public pure {
        a[0] = 3;
    }
}

pragma solidity ^0.8.0;
contract Test11 {
    struct S {};
    function f(S memory param) public pure {
        param.a;
    }
    constructor() {
        f(S(2));
    }
}

pragma solidity ^0.8.0;
contract Test12 {
    function g() public pure returns (S memory) {
        return S(2);
    }
    constructor() {
    }
}
