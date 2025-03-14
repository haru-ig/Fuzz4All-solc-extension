pragma solidity ^0.8.0;
contract M7 {
    uint256 b;
    constructor() {
        b = 1;
    }
    function divide(uint x) public {
        b = b-(uint((x*x)-x/3))*x;
    }
    function modify(uint x) public {
        b = b + x * x;
    }
}

pragma solidity ^0.8.0;
contract M7 {
    uint256 b;
    constructor() {
        b = 1;
    }
    modifier m() {
        b = b-1+1;
        _;
    }
    function divide(uint x) public m {
        b = b-(uint((x-3)/x))*x;
    }
    function modify(uint x) public m {
        b = b + x * x;
    }
}

pragma solidity ^0.8.0;
contract M7 {
    uint b;
    constructor () {
        b = 1;
    }
    modifier m() {
        b = b-1+1;
        _;
    }
    function divide (uint x) public m {
        b = b-(uint((x*x)-x/3))*x;
    }
    function multiply (uint x) public m {
        b = b + x * x;
    }
}
