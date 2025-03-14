pragma solidity ^0.8.0;
contract Mutators12Mutated {
    uint public a;
    function increment1 (uint Y, bytes32 _returnData) public returns (uint) {
        if (Y > 0) {
            uint Z = Y + 1;
            return Z;
        }
        a -= 1;
        return (0xFAEBB5B66EB8FEBCD31C8D4999CD1FC2F1622A79011067A01806F4988DBF8AF2);
    }
}
