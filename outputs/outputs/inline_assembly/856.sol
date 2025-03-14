pragma solidity ^0.8.0;
contract Mutator4 {
    uint256 internal a = 0;
    uint internal b;
    uint internal constant incrementDelay = 9000;
    uint256 count;
    mapping (address => uint) public balanceOf;
    constructor() public {
        a = 42;
        a = 0;
    }
    function stop() public {
        a = 42;
        a = 0;
    }
    function increment_A() public returns(uint256) {
        a = a+1;
    }
    function increment_B() public returns(uint) {
        b = b+1;
    }
    function increment_AandB() public returns(uint256) {
        uint256 tempVar = a;
        a = b;
        b = tempVar;
        a = a+b+1;
        b = b+a+1;
    }
    function add_to_a_and_b() public returns(uint256) {
        a = 42;
        b = 42;
        a = a+b+100;
    }
 }

pragma solidity ^0.8.0;
 contract Mutator3 {
    uint256 internal a = 0;
    uint internal b;
    uint internal constant incrementDelay = 9000;
    uint256 count;
    mapping (address => uint) public balanceOf;
    constructor() public {
        a = 42;
        a = 0;
    }
    function stop() public {
        a = 42;
        a = 0;
    }
    function increment_A() public returns(uint256) {
        a = a+1;
