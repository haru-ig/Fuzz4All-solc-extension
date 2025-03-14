pragma solidity ^0.8.0;
contract Test {
    function f(uint256) public { }
}



import "https://raw.githubusercontent.com/cealfa/solidity-formatter/master/sol/check_overflow.sol";

contract Test {
    uint a;

    function set(uint _b) public {
        a = _b;
    }

    function get() public view returns (uint) { return a; }
}
