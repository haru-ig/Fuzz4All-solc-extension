pragma solidity ^0.8.0;
contract A {
    int constant d = 10;
    uint constant r = 10;
    function h() public pure returns (int,uint) {
        (int local_,uint) memory tmp_ = h();
        local_ -= 1;
        return (local_,r);
    }
}
