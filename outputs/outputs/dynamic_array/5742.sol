pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
library  Test389Library {
        struct Dummy {
            bytes4 a;
            bytes4 b;
        }
    }


    bytes abiEncodedInput =
    "\x00\x00\x00\x00\x2a\x19\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x30\x00\x00\x00";
    bytes abiEncodedInput1 =
    "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x30\x00\x10\x00";
    struct Test389Struct {
        bytes4 a;
        bytes4 b;
    }
    Test389Library.Test389Struct testStruct = Test389Library.Test389Struct(abiEncodedInput.decode(abiEncodedInput1.data));


    function test() {
        Test389Library.Test389Struct memory test = Test389Library.Test389Struct(abiEncodedInput.decode(abiEncodedInput.data));
    }

    bytes abiEncodedInput =
    "\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x
