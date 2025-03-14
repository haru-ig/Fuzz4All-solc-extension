pragma solidity ^0.8.0;
contract mutator120{
    bool isInitialized;
    uint256 public _h;
    uint8 public _w;
    constructor() { _h = 0x80; _w = 8;}
}

pragma solidity ^0.8.0;
contract Mutator120 {
    bool isInitialized;
    uint256 public _h;
    uint8 public _w;
    constructor() { isInitialized = true ; _h = 0x80; _w = 8;}
    function initialize(){if (isInitialized) revert("contract can't be initialized again");    }
    function setH(uint _h) { uint i = 0; do { i++; _h |= _h << (i*8) ; } while(i < 2**8);    emit setH(_h);}
    function setW(uint8 _w) { _w = 6;    }
}
