pragma solidity ^0.8.0;
contract New {
    function sub(uint a, uint b) public pure returns(uint) {
        b += (b << 55);
        b = a - b;
        uint y =  (uint(uint(a) * 2 - uint(b))) + (b >> 55);
        return y;
    }
}

contract SolidityVersion {
    function call() public pure returns(bool, uint256) {
        Original original;
        New new;
        (bool success, uint256 result) = (msg.value > 0, (uint256(uint(original.sub(uint(0), uint(uint(1))));
        if(!success) {
            result = new.sub(uint(uint(1))));
        }
        return (success, result);
    }
}
