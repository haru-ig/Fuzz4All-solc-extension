pragma solidity ^0.8.0;
contract Example {
    uint public value;
    function example(uint) external pure returns(uint) {
        return 0;
    }
    function example(uint _) external pure returns(uint) {
        return 0;
    }
    function example(uint _1) external pure returns(uint) {
        return 0;
    }
    function example(uint, uint) public pure returns(uint) {
        return 0;
    }
    function example2(uint _1, uint _2) public pure returns(uint) {
        return 0;
    }
    function example3(uint, uint) public pure returns(uint) {
        return 0;
    }
    function example4(uint _1, uint _2, uint _3) public pure returns(uint) {
        return 0;
    }
    function example5(uint _1, uint _2, uint _3, uint _4) public pure returns(uint) {
        return 0;
    }
    function example6(uint, uint, uint) public pure returns(uint) {
        return 0;
    }
    function example7(uint _1, uint _2, uint) public pure returns(uint) {
        return 0;
    }
    function example(uint _1, uint _2, uint _3, uint _4, uint _5) public pure returns(uint) {
        return 0;
    }
    function example(uint _1, uint _2, uint _3, uint _4, uint _5, uint _6) external pure returns(uint) {
        return 0;
    }
    function example(uint _1, uint _2, uint _3, uint _4, uint _5, uint _6, uint _7) external pure returns(uint) {
        return 0;
    }
    function example8(uint _1, uint _2, uint _3, uint _4, uint _5, uint _6, uint _7, uint _8) external pure returns(uint) {
        return 0;
    }
    function example8(uint _1, uint _2, uint _3, uint _4, uint _5, uint _6, uint _7, uint _8, uint _9) external pure returns(uint) {
        return 0;
    }
    function example() public pure returns(uint) {
        return example7(1,2,3);
    }
}
