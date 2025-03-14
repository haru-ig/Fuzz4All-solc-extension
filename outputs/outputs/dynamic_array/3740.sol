pragma solidity ^0.8.0;
contract E {
    uint256 [1] a;
    function set(uint256 a_ ) public {
        a.push(a_);
    }
}
