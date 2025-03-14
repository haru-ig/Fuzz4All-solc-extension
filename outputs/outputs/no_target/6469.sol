pragma solidity ^0.8.0;
contract modifierC{
    function f() public view returns(uint256){
        uint r;
        if(r<0)
            assembly {


                r := xor(mload(add(0, r)), 661840384)
                r := xor(x, y)
                r := mload(add(0, r))
                r := add(r, const(1))
                r := mload(add(0, r))
                r := mul(mload(add(0, r)), const(1))
                r := mload(add(0, r))
                r := add(r, const(1))
            }
            return 42;
        return 0;
    }
}
