pragma solidity ^0.8.0;
contract D {
    uint public names;
    uint public value;
    function copy() public {
        uint x = D(address(this)).getValue();
        D(address(this)).setValue(x);
    }
}
