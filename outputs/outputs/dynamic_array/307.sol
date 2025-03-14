pragma solidity ^0.8.0;
contract R2 {
    mapping(uint256=>array) m;
    function f() public {
        m[0].push(0);
        bool b = m[0][0];
    }
}
