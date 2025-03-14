pragma solidity ^0.8.0;
contract mutator120 {
    bool isInitialized;
    uint256 public _h;
    uint8 public _w;
    constructor() { _h = 0; _w = 8;}

    function h() external { _h = 0; _w = 8;}

    function w() public view { _h = 0; _w = 8;}


}
