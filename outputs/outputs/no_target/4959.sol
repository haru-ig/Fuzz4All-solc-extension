pragma solidity ^0.8.0;
contract A{ function f() public pure {} }
contract B{ function f(uint256 a) public pure {} }
contract BC{ function f(uint256 a, uint256 b) public pure {} }
contract CA{ function f(uint256 a) public pure {} }
contract CB{ function f(uint256 a) public pure {} }
contract CCB{function f(uint256 a) public pure {}}
contract CC{ function f(uint256 a) public pure {} }
contract CCC{function f(uint256 a) public pure {}}
contract A {
    function f(uint256 a) public pure {}
}
contract B {
    function f(uint256 a) public pure {}
}
contract BC {
    function f(uint256 a, uint256 b) public pure {}
}
contract CA {
    function f(uint256 a) public pure {}
}
contract CB {
    function f(uint256 a) public pure {}
}
contract CCB {
    function f(uint256 a) public pure {}
}
contract CC {
    function f(uint256 a) public pure {}
}
contract CCC {
    function f(uint256 a) public pure {}
}
constructor() public {}
