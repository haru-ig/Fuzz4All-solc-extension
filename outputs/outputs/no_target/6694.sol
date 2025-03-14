pragma solidity ^0.8.0;
use Mutated12;
mutating function subtract(int x) public returns(bool) {
        if (x <= -2 ** 19) {
            _ = 1;
        } else {
            _ = false;
        }
    }
}

pragma solidity ^0.8.0;
use Mutated12;
mutating modifier checkAddress(address a) {
        require(a == 42, "Unexpected Address!");
        _;
}
contract Mutated20 {
    function subtract(int x) public returns(bool) {
        address a = 42;
        a;
        address b = a;
        b;
        address c = a;
        c;
        checkAddress(a);
        checkAddress(b);
        checkAddress(c);
        checkAddress(0xFFFFFFFFFFFFFFFFFFFFFFF);
        a;
        a;
        a;
        a;
        a;
        a;
        a;
        a;
        a;
        a;
        a;
        a;
        a;
    }
}

pragma solidity ^0.8.0;
use Mutated20;
mutating function subtract(int x) public returns(bool) {
        address b = 0xFFFFFFFFFFFFFFFFFFFFFFF;
        b;
        require(x >= 0, "Invalid Input");
        b;
        b;
        b;
        b;
    }
