pragma solidity ^0.8.0;
contract MutatedArrays {
    uint public counter;
    mapping (uint => uint) mappingIdToAddress;
    uint32[] public arrayWithUnsignedIntegers;
    uint8[] public arrayWithUnsignedIntegersAndBytes;
    mapping(uint => uint8) mappingAddressToUnsigned;
    uint[] public arrayWithSignedIntegers;
    uint8[] public arrayWithSignedIntegersAndBytes;

    function incrementUnsigned() public {
        mappingAddressToUnsigned[counter] ++;
    }

    function incrementSigned() public {
        arrayWithSignedIntegers[1] ++;
    }
    function incrementBytes() public {
        arrayWithUnsignedIntegersAndBytes[1] ++;
    }
    function decrementUnsigned() public {
        mappingAddressToUnsigned[counter --] ++;
    }

    function decrementSigned() public {
        arrayWithSignedIntegers[1] --;
    }
}

pragma solidity ^0.8.0;
contract ComplexNesting {


    uint public arrayWithUnsignedIntegers;
    uint[] public arrayWithUnsignedIntegersAndBytes;

    uint8 public arrayWithSignedIntegersAndBytes;

    function nestedAndComplex() public {

        if (true && arrayWithUnsignedIntegersAndBytes.length==0 ) {
            if (arrayWithUnsignedIntegers == 5 && arrayWithSignedIntegers==9) {
                if (second==6) {
                    if (true) {


                    }
                    else {


                    }
                }
                else {
                    if (true && true) {


                    }
                    else {


                    }
                }
            }
        }

        if (second == 11)
        {
            if (true)
            {
                arrayWithUnsignedIntegersAndBytes[1] ++
                first = 0;
            }
            else
            {
                arrayWithUnsignedIntegersAndBytes[1] --;
                first = 1;
            }
        }
    }
}
