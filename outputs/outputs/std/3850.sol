pragma solidity ^0.8.0;
contract Array {
    uint[499] x;
    uint public min;

    function add(uint x) public {
        require(_x >= min);
        x +=min ;
        x -= min;
        x /= min;
        x *= min;
        x /= min;
        x %= min;
    }
}
