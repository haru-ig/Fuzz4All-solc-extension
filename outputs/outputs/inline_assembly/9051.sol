pragma solidity ^0.8.0;
contract C
{
    function f() public pure {

        assembly{
        contractor_1_add0(0x1234, 0x5678)
    }
        (uint x, address y) = abi.decode(
            abi.encodeWithSignature("contractor_1_add0(uint256,uint256)", 10, 3), (uint,address)
        );
        uint x2 = x + 1;
        y.transfer(x2);
    }
}
