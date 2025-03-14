pragma solidity ^0.8.0;
trait Multisubaccount {
    function add() public returns (uint);

    function sub() public returns (uint);
}
contract SolidityMultisubaccount is Multisubaccount
{
    uint16 external public x;
    function setX(uint16 memory x_) public {
        x = x_;
    }
    function add() public returns (uint)
    {
        uint a = x%2;
        uint b = 32%x;
        return a + b-a*x;
    }

    function sub() public returns (uint)
    {
        uint a = x%2;
        uint b = 32%x;
        return a-a*x - b + 3*b + x;
    }
}

pragma solidity ^0.8.0;
contract P023x4 {
    uint public x;

    constructor() public {
        x = 42;
    }

    function x() public view returns (uint) {
        return x;
    }

    function add() public returns (uint) {
        return x + 3*x;
    }

    function sub() public returns (uint) {
        return x - x1();
    }

    function x1() public view returns (uint) {
        return 3*x;
    }
}<jupyter_output><empty_output><jupyter_text>Example 1.<jupyter_code>contract Example1 is ArrayMutationsC6418 {
    function setA(uint a_) public {
        x = a_;
    }
    function setB(uint b_) public {
        x = b_;
    }
    function setNumber(uint number_) public {
        numbers[42] = number_;
    }
    function getNumber(uint n_) public view returns (uint) {
        return n_;
    }
}<jupyter_output><empty_output><jupyter_text>Example 2.<jupyter_code>contract Example2 {
    uint[] numbers = [1,2,3,647,4,658,3333,444,5];

    function add(uint a, uint b) public pure returns (uint) {
        return a + b;
    }
}
contract Example2ArrayMutations is ArrayMutationsC6418 {
    uint[] numbers;

    function setNumber(uint number_) public {
        numbers.push(number_);
    }

    function setNumbers(uint[] memory numbers_) public {
       numbers = numbers_;
    }

    function lengthNumbers() public view returns (uint) {
        return numbers.length;
    }
}<jupyter_output><empty_output><jupyter_text>Example 3.<jupyter_code>
contract Example3{
    uint x = 6;
    uint[] storage storageNumbers = storage contractNumbers() public;

    function setX(uint x_) public {
        x = x_;
    }
    function x() public view returns (uint) {
        return x;
    }
    function x1() public view returns
