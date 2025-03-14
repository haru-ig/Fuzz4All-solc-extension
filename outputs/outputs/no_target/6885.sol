pragma solidity ^0.8.0;
contract TestMutated662 {
    uint public x = 5;
    function add(uint x) public returns (uint) {
        uint z = -x;
        return (uint(-x) + z * 3 / x  + ~(~z & -y * -3 / x) * ~(x - 2));
    }
}
