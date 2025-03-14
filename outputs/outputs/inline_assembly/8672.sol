pragma solidity ^0.8.0;
interface IModul {
        function add(uint x) external view returns (uint);
        function sub(uint x) public view returns (uint);
        function divide(uint x,uint y) public view returns (uint);
        function equals(uint x, uint y) public view returns (bool);
}
contract A {
        function f() public returns(bool) {}
        IModul x;
        constructor(IModul x) public {
                this.x = x;
        }
        fallback() external {
                s(x.add(s));
        }
}
contract B {
        function f() public returns(bool) {}
        A a;
        constructor(A a) public {
                this.a = a;
        }
        fallback() external {
                s(a.x.divide(a.s));
        }
}
contract C {
        function f() public returns(bool) {}
        IModul x;
        mapping(address => uint256) public numbers;
        constructor(IModul x) public {
                this.x = x;
        }
        fallback() external {
                s(x.equals(x.add(x.div(s)).sub(0), 0));
        }
}
contract TestContract {
        receive() fallback{}
}
