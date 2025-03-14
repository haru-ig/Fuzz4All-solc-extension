pragma solidity ^0.8.0;
contract SemanticMutation6 {
    uint constant N = 16000;
    address constant a = 0x00000000002C6444B6B9079CE94E32AFC34A322E;
    function get()
        public
        pure
        returns (uint)
    {


        assembly {
            let x := 0
            let x := x + 1
            let x := x + 3
            let x := x + 7
            let x := x + 15
            let x := x + 31
            let x := x + 63
            let x := x + 127
            let x := x + 255
            let x := x + 511
            let x := x + 1023
            let x := x + 2047
            let x := x + 4095
            let x := x + 8191
            let x := x + 16383
            let x := x + 32767
            let x := x + 65535
            let x := x + 131071
            let x := x + 262143
            let x := x + 524287
            let x := x + 1048575
            let x := x + 2097151
            let x := x + 4194303
            let x := x + 8388607
            let x := x + 16777215
            let x := x + 33554431
            let x := x + 67108863
            let x := x + 134217727
            let x := x + 268435455
            let x := x + 536870911
            let x := x + 1073741823
            return x
        }
    }
}
