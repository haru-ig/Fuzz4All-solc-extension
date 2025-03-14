pragma solidity ^0.8.0;
contract R3 {
        uint private a;
        uint private b;
    constructor(uint _x) public {
        a = _x;
        b = _x;
    }
    function swap() public returns (uint) {
        uint temp = a;
        a = b;
        b = temp;
        return b + b + a + a + b;
    }
    function get() public view returns (uint) {
        return a + a*a + a*a*a - b + b + b;
    }
}


pragma solidity ^0.8.0;
contract Rc {
    address constant owner = msg.sender;
    uint256 constant ONE = 1;
    uint256 constant TWO = 2;
    modifier onlyOwner() {
    require(msg.sender == owner);
    _;
    }
}

pragma solidity ^0.8.0;
contract Rc {

    address constant owner = msg.sender;
    uint256 constant ONE = 1;
    uint256 constant TWO = 2;
    modifier onlyOwner() {
    require(msg.sender == owner);
    _;
    }

    function isZero() public pure returns (bool) {
        return false;
    }

    function add(uint a, uint b, uint c) public pure returns (uint) {
        return a + b + c;
    }

    function subtract(uint a, uint b) public pure returns (uint) {
        return a - b;
    }

    function multiplyBy(uint a, uint b) public pure returns (uint) {
        return a * b;
    }

    function divideBy(uint a, uint b) public pure returns (uint) {
        return a / b;
    }
}



pragma solidity ^0.
