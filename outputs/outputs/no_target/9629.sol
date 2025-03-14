pragma solidity ^0.8.0;
interface IInterface_v35 {
    function bar1024(uint40 input) external    ;
    function baz1024(uint40 input) external    ;
    function qux1024(uint40 input) external    ;
}

pragma solidity ^0.8.0;
interface IInterface_v337 {
    function bar337(uint42 input) external    ;
    function baz337(uint42 input) external    ;
    function qux337(uint42 input) external    ;
}

pragma solidity ^0.8.0;
interface IInterface_v2   {
    function bar22(uint4 input) external    ;
    function baz22(uint4 input) external    ;
    function qux22(uint4 input) external    ;
}

pragma solidity ^0.8.0;
contract Contract_v1 {
    function f(
        bytes memory data1,

        bytes1 input1,
        bytes32 data2
        ) public
            pure

            external
    {
        assembly {

            let result := mload(add(data1, 3))
            let data_address := add(data1, 0x20)
            let result_address := add(data1, 0x20)
            let data3 := add(data1, 0x20)

            let result128 := mload(add(data3, 3))
            let data512 := add(data3, 0x20)
            let result64 := mstore(add(data3, 0x20), result)
            let result128128 := mstore(add(data512, 3), result128)
            mstore(result_address, (result64, result128128))
            mstore(add(result_address, 0x20), data2)
            return(result_address)
        }
    }
}
pragma solidity ^0.8.0;
