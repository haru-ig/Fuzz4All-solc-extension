pragma solidity ^0.8.0;


contract X {

    function x() public {
        uint224 i;
    }
    function x2() public {
        uint256 i;
    }
    function x3() public {
        uint1024 i;
    }
    function x4() public {
        uint128 i;
    }
    function x5() public {
        uint512 i;
    }
    function x6() public {
        uint1024 i;
    }
    function x7() public unchecked {
        uint256 i;
    }
    function x8(uint192 input) public {
        uint128 i;
    }
    function x9(uint165 input) public {
        uint224 i;
    }
}
