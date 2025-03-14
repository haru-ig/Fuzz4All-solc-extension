pragma solidity ^0.8.0;
contract ResolveAssembly3 {
    function test() public pure returns(uint) {
        uint y = 0x123;

        assembly {
            x := 4567
            x := add(x, 0x4567)
            y := add(y, x)
        }
        return y;
    }
}
