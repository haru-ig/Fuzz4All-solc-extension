pragma solidity ^0.8.0;
contract F0 {
    function add_internal (uint a, uint b) public pure returns (uint){
        return a ^ b;
    }
}


contract F1 {
    function plus(uint a, uint b) public pure virtual returns(uint){
        return a + b;
    }
}

contract F2 {
    function plus(uint a, uint b) public pure virtual returns (uint){
        return a + b;
    }
}




contract F3 {
    function plus(uint a, uint b) public pure virtual returns (uint){
        return a ^ b;
    }
}

contract F4 {
    uint a;
    function F4() public {
        a = 1;
    }
    function plus(uint a, uint b) public pure virtual returns (uint){
        a++;
        b = b + a;
        return b;
    }
}

contract F5 {
    uint a;
    function F5() public {
        a = 1;
    }
    function plus(uint a, uint b) public pure virtual returns (uint){
        a++;
        b = b + a;
        return b;
    }
}

contract F6 {
    uint a;
    constructor(uint _a) public {
        a = _a;
    }

    function plus(uint a, uint b) public pure virtual returns (uint){
        a++;
        b = b - a;
        return a - b;
    }
}
contract F7 {
    uint a;
    constructor() public {
        a = 1;
    }

    function plus(uint a, uint b) public pure virtual returns (uint){
        a++;
        b = b + a;
        return b;
    }
}



contract F8 {
    bytes1 b;
    constructor(string memory _b) public {
        b = bytes1(_b);
    }

    function plus(uint a, uint b) public pure virtual returns (uint){
        a++;
        b = b + a;
        return b;
    }
}
contract F9 {
    bytes32 c;
    constructor(bytes32 memory _c) public {
        c = _c;
    }

    function plus(uint a, uint b) public pure virtual returns (uint){
        a++;
        b = b + a;
        return b;
    }
}


contract F10 {
    uint a;
    constructor(uint _a) public {
        a = _a;
    }

    function plus(uint a, uint b) public pure virtual returns (uint){
        a++;
        b = b + a;
        return b;
    }
}
contract F11 {
