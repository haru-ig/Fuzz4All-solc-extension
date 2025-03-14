pragma solidity ^0.8.0;
contract Original {
    function sub(uint a, uint b) public pure returns(uint) {
        a -= b;
        return (a);
    }
}
