pragma solidity ^0.8.0;
contract SafeMathStatic{
    uint public value;
    function add(uint a) public pure {
        a = min(a, value);
        value = value + a;
    }
    function max(uint a, uint b) pure public returns (uint) {
        return a < b? b : a;
    }
}
