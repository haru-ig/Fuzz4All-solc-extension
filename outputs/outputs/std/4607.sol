pragma solidity ^0.8.0;
contract Fixed {
    uint public constant ZERO = 0;
    uint public constant THREE = 3;
    constructor() public {
        ZERO = 99;
        THREE = 3;
    }
}
contract Fancy {
    bytes16 public constant BLAHBLAHBLAH = "Blah";
    uint public constant MAX_VALUE = 255;
    uint private constant MIN_VALUE = 1;
    mapping(uint => uint[]) public mappings2;
    constructor() public {
        mappings2[MAX_VALUE].push(MIN_VALUE);
    }
}

pragma solidity ^0.8.0;
contract Fancy {
    bytes16 public constant BLAHBLAHBLAH = "Blah";
    uint public constant MIN_VALUE = 1;
    uint private constant MIN_VALUE_PRIVATE = 0x80000001;
    uint private constant MAX_VALUE_PRIVATE = 0xfffffffffff;
    uint public constant MAX_VALUE = 0xffffffff;
    uint private constant MAX_VALUE_PRIVATE_FINAL = 0xffffffff7fffffff;
    uint public constant ZERO = 0;
    uint private constant ZERO_PRIVATE = 0x80000000;
    bool public constant BOOLEAN = true;
    bool private constant BOOLEAN_PRIVATE = true;
    uint128 private constant INT128_128 = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff;
    uint32 private constant INT32_32 = 0xffffffffffffffff;
    address public constant MAPPING = 0x8000000000000000000000000000000520;
    uint public constant SINGLE = 0;
}

pragma solidity ^0.8.0;
contract A {
    function someArray() public returns (uint[]) {
        return [1, 2, 3];
    }
}

pragma solidity ^0.8.0;
contract B {
    function someArray() public returns (uint[2]) {
        return [1, 2];
    }
}

pragma solidity ^0.8.0;
contract C {
    uint[2] public a;
    uint[2] public b;
    function add(uint x, uint w) public returns (uint){
        return a + x;
    }
    function subtract(uint x, uint w) public returns (uint){
        return x - w
