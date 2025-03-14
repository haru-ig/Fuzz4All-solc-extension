pragma solidity ^0.8.0;
contract Mutate0015b {
    uint256 input;
    constructor() { input = 2; }
    modifier m() {
        input = input + 6;
        _;
    }
    function callMe() internal m {
        assert(false);
    }
}

pragma solidity 0.8.0;
contract Mutate0015c {
    uint256 input;
    constructor() { input = 2; }
    modifier m() {
        input = input + 6;
        _;
    }
    function callMe() internal m {
        assert(false);
    }
}

contract Mutate0015d {
    uint256 input;
    constructor() {input = 2;}
    modifier m () {input = input + 6;}
    function callMe () internal m {
        assert(false);
    }
}

pragma solidity 0.8.0;
contract Mutate0015e {
    uint256 input;
    constructor() {input = 2;}
    modifier m () {input = input + 6;}
    function callMe () internal m {
        emit Log();
        assert(false);
    }
    event Log ();
}
contract Mutate0015f {
    uint256 input;
    constructor() {input = 2;}
    modifier m () {input = input + 6;}
    function callMe () internal m {
        emit Log();
        emit Log();
        assert(false);
    }
    event Log ();
}
