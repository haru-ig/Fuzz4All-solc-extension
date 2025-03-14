pragma solidity ^0.8.0;
contract Contract1 {
    uint256 p;
    uint256 q;
    Contract2 c;
    function Contract1(uint256 p_in, uint256 q_in) {
        p = p_in;
        q = q_in;
        c = new Contract2(p, q);
    }
    function() external payable {
        if (c.method1()) {

        }
        if (c.method2()) {

        }
    }
}
