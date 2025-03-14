pragma solidity ^0.8.0;
interface Fallback4
{
        function a(uint8 data, uint8 x) external;
}

contract Caller
{


        fallback () external
        {
                assembly {
                        var _func := add(0x70, 0)
                        var _data := add(0x120, 0)
                        var _extra := add(0x160, 0)

                        calldatacopy(_extra, 0, 4)

                        if mload(_func) == 4 {

                                returndatacopy(0, 0, 4)

                                let result := call(sub(_func, add(0x160, 0)), 0, _data, sub(0x160, 0), _extra, 0, 64)
                                let output := result.returndata
                                let output_offset := add(0x160, 0) + 56
                                gascopy(sub(sub(sub(add(output, output_offset), 4), 8), 1), 40, 120)

                }
        }
}
