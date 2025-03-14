pragma solidity ^0.8.0;
contract ImmutableClass2 {
    function f() public pure returns (address) {return address(0);}
}

pragma solidity ^0.6.0;
contract Mutator10  {
    function f() public pure returns (address) {return 0xB3;}
}

pragma solidity ^0.8.0;
contract ImmutableClass3 {
    function g() public pure returns (uint) {return 0xBA;}
}

pragma solidity ^0.8.0;
contract Mutator11  {
    function f() public pure returns (address) {return address(0xBEEFBEEFBA);}
}
contract Mutator12 {
    assembly {
    msg.sender
    }
}
contract Mutator13 {
    function f() public pure returns (address) {return msg.sender;}
}

pragma solidity ^0.8.0;
contract Mutator9 {
    uint public i;
    uint private s;
    struct ImmutableClass3 {
        function f() public pure returns (uint) {return 0xBA;}
    }
    struct Mutator10 {
        function f() public pure returns (bytes32) { return '0xB3'; }
    }
    struct Mutator11 {
        struct ImmutableClass3  {
            function f() public pure returns (uint) {return 0xB3;}
        }
        struct Mutator10 {
            function f() public pure returns (bytes32) { return '0xB3'; }
        }
    }
    struct Mutator12 {
        address private x;
        constructor(address x) public {this.x = x;}
        pure function f() public pure returns (address) { return x;}
    }
    struct Mutator13 {
        struct ImmutableClass3  {
            function f() public pure returns (uint) {return 0xBA;}
        }
        struct Mutator13 {
            function f() public pure returns (address) { return address(); }
        }
    }
    uint _z, a, b;
    constructor (address addr) public {
        x = addr;
    }
    address x;

    function f() public pure returns (address) {
        return x;
    }
    function g() public pure returns (uint) {
        return 0x99;
    }
    function h() public pure returns (
            uint _t,
            address x) {
            return (_t,x);
    }
    function i() public view returns (uint) {
        return a;
    }
    function j() public pure returns (uint) {
        return 0x99;
    }
    function keeper() public pure returns (address
