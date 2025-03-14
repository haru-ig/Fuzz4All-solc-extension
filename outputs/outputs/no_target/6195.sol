pragma solidity ^0.8.0;
contract OriginalContractV1 {
    uint public result1;

    uint constant minValue = 0;
    uint constant increment = 1;
    uint constant increment2 = 42;

    struct {
        bool nonZero;
    } testStruct;

    function OriginalCall() public {
        uint value;

        if (isMutatedCall()) {

            value = minValue;
        } else {

            value = addrToUint(0x00eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee);


            result = value + increment2;
        }

        if (testStruct.nonZero) {

            if (value < minValue || value > maxValue) {

                if (0!= value) {
                    revert();
                }
            }
        } else {

            if (value < minValue || value > maxValue) {

                if (isDerivedFrom(0x00eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, MutatedContractV2)) {
                    revert();
                }
            }
        }

        result = value + increment;
    }

     function addrToUint(address _addr) pure internal returns (uint)
    {
        uint storage s = uint(0x00eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee);
        assembly {
            s := s + mload(add(s,0x20))
        }
        return s & 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE;
    }

    function isMutatedCall() public pure returns (bool) {
        return addrToUint(0xCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC)!= 0xCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC;
    }

    function isDerivedFrom(address baseAddr, address derivedAddr) public pure returns (bool) {
        (bool) f;
        assembly {
            f := iscontract(_addr)
        }
        return f && baseAddr == derivedAddr;
    }
}
