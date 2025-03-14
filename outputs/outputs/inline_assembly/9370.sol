pragma solidity ^0.8.0;
contract B is A {
    mapping (uint=>uint) map_;
    int constant d = 10;
    uint constant r = 10;
    function h() public returns (int,uint) {
        (int d_, uint r_) = (d, r);
        (uint d2_, uint r2_) = (d, r);
        (uint d3_, uint r3_) = (0, r);
        (int d4_, uint r4_) = (d, r);
        (uint d5_, uint r5_) = (0, r);
        map_['d'] = d_;
        map_['r'] = r_;
        map_['d2'] = d2_;
        map_['d3'] = d3_;
        map_['d4'] = d4_;
        map_['d5'] = d5_;
        return (d_, r_);
    }
}
