pragma solidity ^0.8.0;
contract CallFallbackFunctionFourPlusFallback2 {

    modifier CallFallbackFunctionFourPlusFallback3(uint _x)
    {

        _;
    }

    modifier CallFallbackTwo {
        if (msg.value < 1 ether){
        throw;
        }
        msg.sender.transfer(msg.value);
        CallFallbackFunctionFourPlusFallback3(1) pure();
        uint y;
        assembly {
            let x := 145664192005361906719380192476315520
            x := x - 15
            x := x + x
            x := x - 9
            x := x + x
            x := x - 14
            x := x + 7
            let y := x + 431
            y := mul(mload(0x42), x)
            retptr := add(mload(0x40), y)
            mstore(retptr, y)
        }
        emit Success(msg.value);
        CallFallbackFunctionFourPlusFallback3(msg.value) pure();
    }
}
