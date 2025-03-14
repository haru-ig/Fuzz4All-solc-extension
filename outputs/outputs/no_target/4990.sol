pragma solidity ^0.8.0;
contract AA { function f(uint256 a) public view {a += 2;} }
contract AB { function f(uint256 a) public view {a += 2;} }
contract AC { function f(uint256 a) public view {a += 2;} }
contract BC4 (uint256 a) public {
    function f(uint256 b) public view {a += b+this.a;}
}
contract CC4 (uint256 a) public {
    constructor(uint256 i) public {
        a += i;
    }
    function f(uint256 b) public view {a += b+this.a;}
}
