pragma solidity ^0.8.0;
contract Example2 {
    uint x = 1;
    uint y = 2;
    uint z;





    function test() public {
        (uint x1, uint x2, uint x3) = (2, 3, 4);
        require(x1 > x2 && x1 < x3, "Not possible")
    }
}
