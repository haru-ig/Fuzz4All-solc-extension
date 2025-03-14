pragma solidity ^0.8.0;
contract D {
    uint x = 300;
    function g() public view returns(uint) {
        uint w = x;
        x += 3;
        x *= 27;
        return w;
    }
}

pragma solidity ^0.8.0;
contract D {
    function h() public viewreturns(uint a) {
        a = 1;
        assembly {

            w := add(mload(0x40), mload(0x40))
            mstore(64, w)


            y := add(mload(0x40), mload(0x40))
            mstore(64, y)


            a := add(mload(16), a)
            mstore(mload(0x40), a)
        }
    }
}
