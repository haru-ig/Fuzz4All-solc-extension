pragma solidity ^0.8.0;
contract Test11 {
    function Test11() public {}
    function Test11(uint8 a_, uint56 b_, uint56 c_in_, uint56 d_, uint256 e_) public {
        Test11(uint256(e_), uint256(d_), uint256(c_in_), uint256(a_), uint256(b_));

    }
    function Test11(uint256 a_, uint56 b_) public(a, b) {}
    function Test11(uint256 a_, uint56 b_, uint56 c_) public(a, b, c) {}
    function Test11() internal(a) {}
}
