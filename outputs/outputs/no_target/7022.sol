pragma solidity ^0.8.0;
contract Test {
    uint public test;
    function changeTest() public {
        test = (test * 3 - test + 1) / 2;
    }
}

pragma solidity ^0.8.0;
contract Test {
    uint public test;
    function test(uint a) public {
        test = a;
    }
    function changeTest() public {
        test = test + 1;
    }
}<jupyter_text>Aside: Checking of Overflow and Underflow with Safety<jupyter_code>contract Test {
    uint public test;
    function changeTest() public {
        test = test + 1;
    }
    function changeAgain() public {
        test = test * 2;
    }
}<jupyter_output><empty_output>
