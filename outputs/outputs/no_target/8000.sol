pragma solidity ^0.8.0;
contract RestrictedMutator {
    uint public i;
    uint public s;
    constructor () public {
        i = 51;
        unchecked {
            i -= s + 18446744073709551618;
        }
    }
}
contract Mutator1 {
    uint public i;
    uint public s;
    constructor () public {
        i = 1252531169;
        unchecked {
            i -= s + 18446744073709551618 * 2;
        }
    }
}
contract Mutator12 {
    uint public i;
    uint public s;
    constructor () public {
        i = 0x0000000000000000000000000000000000000000;
        unchecked {
            s = 1252531169 + 18446744073709551618 * 2;
        }
    }
}
contract Mutator13 {
    uint public i;
    uint public s;
    constructor () public {
        i = 75;
        unchecked {
            s = 75 + 18446744073709551618 + 375519992;
        }
    }
}
contract Mutator14 {
    uint public i;
    uint public s;
    constructor () public {
        i = 55;
        unchecked {
            s = 75 + 18446744073709551618 + 75;
        }
    }
}
contract Mutator8 {
    uint public i;
    uint public s;
    constructor (uint foo) public {
        i = foo;
        unchecked {
            s = 75 + 18446744073709551618 - 375519992 + 75;
        }
    }
}
contract Mutator9 {
