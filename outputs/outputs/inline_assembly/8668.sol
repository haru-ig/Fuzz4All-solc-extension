pragma solidity ^0.8.0;
contract Modul{
        modifier onlyOne() {
            uint x = 1;
            assembly {
                sstore(0, x << 2000 | 3)
            }
            _;
        }
        uint public s;
        constructor(uint i) {
            s = i;
            _;
        }
        fallback() public onlyOne{
            s++;
        }
}
