pragma solidity ^0.8.0;
contract SemanticallyEquivalentXulContract {
    constructor () {
    }
    function b() public {
        b();
    }
    function c() public {
        if (true) {
            c();
        }
    }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentXulContract {
    constructor () {
    }
    function b() public {
        b();
    }
    function c() public {
        c();
    }
    function d() public {
        if (true) {
            if (true) {
                c();
            }
        }
    }
}
