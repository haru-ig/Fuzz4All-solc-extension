pragma solidity ^0.8.0;
contract Mutate57 {

    function mutate() public {
        uint[10] memory x1;
        x1[2] = 22;
        x1[3] = 13;
    }

    function reassign(uint m0, uint b0) public {
        uint[10] storage x1 = x1_;
        x1[2] = m0;
        x1[3] = b0;
    }
}
