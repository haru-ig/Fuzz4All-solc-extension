pragma solidity ^0.8.0;
contract MyContract {
    constructor() public {
        int a;
    }
    function setA(MyContract s) public {
        s.A;
    }
}
contract MyOtherContract {
    uint a;
    constructor(uint b) public {
        a = b;
    }
    function getA() public view returns (uint) {
        return a;
    }
}
contract MyOtherOtherContract {
    address addr;
    constructor(address _addr) public {
        addr = _addr;
    }
    function getA() public view returns (uint) {
        return a;
    }
}
contract MyOtherOtherOtherContract {
    address addr;
    mapping(uint => MyContract) map;
    constructor(address _addr) public {
        addr = _addr;
    }
    function getA() public view returns (uint) {
        return a;
    }
}
contract MyOtherOtherOtherOtherContract {
    mapping(uint => MyOtherOtherContract) map;
    uint a;
    constructor(uint _a) public {
        a = _a;
    }
    function getA() public view returns (uint) {
        return a;
    }
}
contract MyOtherOtherOtherOtherContract {
    address addr;
    mapping(uint => uint) map;
    constructor(address _addr) public {
        addr = _addr;
    }
    function getA() public view returns (uint) {
        return a;
    }
}
contract MyOtherOtherOtherOtherOtherContract {
    mapping(uint => MyOtherOtherOtherContract) map;
    mapping(uint => uint) map;
    uint a;
    constructor(uint _a) public {
        a = _a;
    }
    function getA() public view returns (uint) {
        return a;
    }
}
contract MyOtherOtherOtherOtherOtherOtherOtherContract {
    mapping(uint => MyOtherOtherOtherOtherContract) map;
    uint a;
    constructor(uint _a) public {
        a = _a;
    }
    function getA() public view returns (uint) {
        return a;
    }
}
contract MyOtherOtherOtherOtherOtherOtherOtherContract {
    mapping(uint => address) map;
    uint a;
    constructor(uint _a) public {
        a = _a;
    }
    function getA() public view returns (uint) {
        return a;
    }
}
contract MyContract2 {
    address addr;
    mapping(uint => address) map;
    uint a;
    constructor(uint _a) public {
        a = _a;
    }
    function getA() public view returns (uint) {
        return a;
    }
}
contract MyOtherContract2 {
    mapping(uint => MyContract2) map;
    uint a;
    constructor(uint _a) public {
        a = _a;
    }
    function getA() public view returns (uint) {
        return a;
    }
}
contract MyOtherOtherContract2 {
    mapping(uint => MyOtherContract2) map
