pragma solidity ^0.8.0;
contract Mutated {
    uint256[2][2] a;

    function set(uint a_, uint b_, uint256 c_) public {a[0][a_] = b_; a[1][a_] = c_; b_ = a_[0]; b_[0] = a_; b_[1] = a_[1];}
    function get(uint a_) public view returns (uint256 x, uint y) {x = a_[0]; x = b_[a];}
    function min(uint256 a, uint256 b) public pure returns (uint256) {return a <= b? a : b;}
    function max(uint256 a, uint256 b) public pure returns (uint256) {return a >= b? a : b;}
    function sum(uint256 a, uint256 b) public pure returns (uint256 c) {
        c = a + b;
        c = c - a;
        c = c - b;
    }
}
pragma solidity ^0.8.0;
contract Mutated {
    uint8[4] a;

    function set(uint8 a_, uint8 b_, uint8 c_) public {a[0] = a_; a[1] = b_; a[2] = c_; a[3] = 0;}
    function get(uint8 a_) public view returns (uint8 x) {x = a[a];}
}
pragma solidity ^0.8.0;
contract Mutated {
    uint256[4] a;

    function set(uint256 a_, uint256 b_, uint256 c_) public {a[0] = a_; a[1] = b_; a[2] = c_; a[3] = 0;}
    function get(uint256 a_) public view returns (uint256 x) {x = a[a];}
}
