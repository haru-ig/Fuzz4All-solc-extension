pragma solidity ^0.8.0;
contract FixedPoint {
    using SafeMath for uint;
    uint constant R = 1e12 + 7;
    uint constant X = 65535;
    uint public y;
    function set(uint w) public {
        y = X.mul(w).div(R);
    }
    function sum() public view returns (uint sum) {
        uint s = 0;
        for (uint i=0; i< X; i++) { s = s.add(y.div(R)); }
        return s;
    }
}
