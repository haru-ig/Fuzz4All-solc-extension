pragma solidity ^0.8.0;
contract New3 {

    function get(address a_, address b_) public view returns (uint160) {
        return (uint160(a_ * (1 * 10)) + uint160(b_));
    }
}
