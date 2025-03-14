pragma solidity ^0.8.0;
contract MyContract {
    function f(int x) public {
        require(msg.sender == 0xB0A040d9c9E87d848e6E655d338f278f6544F152);
        if (x > 0) {
            (address r, int s) = uintToSigned(x);
            (uint16 low, uint16 high, uint8 borrow) = sigToByte(s);
            emit SignedIntegers(low, high, borrow);
        } else {
            (address r, int s) = uintToSigned(x);
            (uint16 low, uint16 high, uint8 borrow) = sigToByte(s);
            emit SignedIntegers(low, high, borrow);
        }
    }
    function sigToByte(int s) internal pure returns(uint16 low, uint16 high, uint8 borrow){
        low = uint16(s & 0xfffffff0);
        high = uint16(s & 0xffff);
        borrow = s < 0;
    }
    function uintToSigned(uint x) internal pure returns(address addr, int s){
        s = int(x * uint(- (-uint256(1) ^ x)));
        if (s < 0) {
            s = int(~s - 1 - uint256(1));
            low = ~high;
            high = ~low;
        }
        addr = msg.sender;
    }
    event SignedIntegers (uint16 _low, uint16 _high, uint8 _borrow);
}
