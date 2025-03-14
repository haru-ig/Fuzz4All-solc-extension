pragma solidity ^0.8.0;
interface Mutated { function f() external returns (uint, uint); }

pragma solidity ^0.8.0;
        code
contract Contract {

    uint8 public x;
    constructor()
    {
        uint v;
        assembly {
            v := mload(0x40)
        }
    }

    function f(uint8 a, uint8 b) public returns (uint, uint) {
        return (a + b * 1) * (a - (x + 100)) / 2;
    }

    receive() external payable { }
}
