pragma solidity ^0.8.0;

contract Test1 {
    mapping (uint=>bool) m;
    function Test1(uint x) {

       if(m[x]) { m[x] = false; }
    }
    function main() public {
        uint y = 0;
        do {   } while(--y);
        do {} while(--y);
    }
}
