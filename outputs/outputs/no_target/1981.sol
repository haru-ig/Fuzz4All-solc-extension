pragma solidity ^0.8.0;
contract Semantic {
    pragma populates 0x44;
    function f() public {
        unchecked {
        }
    }
}

pragma solidity ^0.8.0;
contract MutatedSematic {
    uint private _x;
    bytes15 constant _f = type(bytes15).max;
    constructor () {
        _x <<= 1;
    }

    function f() public {
        unchecked {
            _x <<= 1;
        }
    }
}

pragma solidity ^0.8.0;

contract MutatedSematicTests {
    function test01() {
        MutatedSematic mut;
        mut.f();
        mut.x;
    }
    function test02() {
        MutatedSematic mut;
        mut.f();
        unchecked {
            mut.x <<= 1;
        }
        mut.x;
        mut.x >>= 1;
        unchecked {
            mut.x ^= 8;
        }
    }
    function test03() {
        NoMutatedSematic no;
        no.f();
    }
    function test04() {
        Semantic semantic;
        semantic.f();
    }
}
