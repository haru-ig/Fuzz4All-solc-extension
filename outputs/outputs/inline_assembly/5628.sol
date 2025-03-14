pragma solidity ^0.8.0;
contract MutatedValue8 {
    mapping (address => uint) public a;
    function set(address a_, uint b_) external {
        a[a_] = b_;
    }
    function test1() public returns (bool) {
        address c = address(this);
        uint d;
        assembly {

        $c := mload(c)

        d := mload(c)
        }
        return c == address(this) && c == d && d == 0x0;

    }
}
