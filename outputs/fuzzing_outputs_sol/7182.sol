pragma solidity ^0.8.0;
interface Example2 {
    function foo() external view returns (address payable c);
}
contract Example2 is IExample2 {
    address payable c;
    function foo() public view returns (address payable) {
        return c;
    }
    function bar() internal view returns (uint) {
        c = address(new Example1());
        return 1;
    }
    function setCheckFor(address c) internal {
        require(c!= address(0));
        this.c = c;
    }
    function getCheckFor() public view returns(address payable) {
        return this.c;
    }
}
contract Example3 is IExample3 {
    uint a;
    function setA(uint x) public {
        a = x;
    }
    function getA() public view returns (uint) {
        return a;
    }
    function setB(uint x) internal {
        a = x > 0? x : (uint(-1));
    }
    function getB() public view returns (uint) {
        return a;
    }
    function exampleA() internal returns (uint) {
        return a;
    }
    function exampleB() public view returns (uint) {
        return a;
    }
}
