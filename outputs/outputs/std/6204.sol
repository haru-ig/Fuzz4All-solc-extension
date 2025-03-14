pragma solidity ^0.8.0;
contract TestCall {
    function call() public pure {

        uint256 x = SemanticallyEquivalent2.f();
        uint8 z = 128 + f();
        uint256 y = z + x;




        (uint256 g, bool eq) = callWithValue(z, "h");
        (, eq) = callWithValue2(semanticallyEquiv(x), semanticallyEquiv(y), "d");
    }


    function callWithValue(uint256 x, bytes memory bs) internal returns (uint256, bool) {
        bytes[] memory callData = new bytes[](2);
        callData[0] = memoryToHex(x, bs.length);
        callData[1] = bs;
        (uint256 res, ) = call.value(200)(contractAddress, abi.encodeWithSignature("test(bytes)", callData));
        return (res, res == 130);
    }


    function semanticallyEquiv(uint256 x) internal pure returns (uint256){
        uint256 p = x;

        return p * 2 + x;
    }


    function testWith(uint256 x, uint w) internal {
        uint t0 = now;
        while (now - t0 < w) ;
    }
}
