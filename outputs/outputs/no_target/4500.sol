pragma solidity ^0.8.0;
contract A {
    function A() public {}
    function myFunction() pure public returns (bool v) {
        require(true);
        unchecked{
            v = true;
        }
    }
}
contract B is A {
    function myFunction() public returns (bool v) {
        unchecked{
            v = true;
        }
    }
}
contract test {
    function myFunction() public returns (bool v) {
        v = 1;
        uint256 x;
        unchecked{

            x = 3 + 4;
            v = x + 1;
        }
    }
    function myFunction2() view public returns (bool v) {
        require(3 + 4 < 10);
        unchecked{
            v = 2;
        }
    }
}
contract A {
    bool public myBoolean;
    struct S {
        uint256 value;
    }
    function A() public {
        myBoolean = true;
    }
    function myFunction() public returns (bool v) {
        require(false);
        unchecked {
            v = S(1,2).value;
        }
    }
}
contract test2 {
    bool public value;
    function test2() public {
        value = false;
    }
    function test2() view public {
    }
    function test2() external {
    }
    function test2() internal {
    }
    function test2() payable {
    }
}
interface TestInterface {
    function f(uint value);
    function g(uint value);
    function g();
}
function test(TestInterface x) public returns (uint) {
    unchecked {
        x.f(123456786);
    }
}
