pragma solidity ^0.8.0;
contract Mutators14 {
    uint public a;
    function increment2 (uint Y) public {
        uint Z = Y + 1;
        a = Z;
        assembly {

            mstore(8(1), a)
        }
        a = 1;
    }
}
