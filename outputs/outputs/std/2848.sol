pragma solidity ^0.8.0;
contract EquivalentArithmetic_SemiAnalytical {
    uint256 z;
    uint256 b;
    uint16 s;
    uint16[100] h;
    struct EquivalentArithmetic20 {
        uint256 h;
        uint256 h_;
    }
    function add_a_b(uint256 x,uint256 y) public pure returns (uint){
        return x+y;
    }
    function add_a_b_return_b(uint256 x,uint256 y) public pure returns (uint){
        return (x+y);
    }
    function add_a_b_return_pair(uint256 x,uint256 y) public pure returns (uint x_plus_y,uint y_plus_x){
        return (x+y);
    }
    modifier is_equal_b_zero() {


        uint256 b_copy=b;


        address h_0 = (uint16[](h));
        h.set(uint16[100] memory{
            "0x0000000000000000000000000000000000000000000"
        });
        h.set(h_0);
        b = 0;
        revert();
        b = b_copy;
    }
}
