pragma solidity ^0.8.0;
contract Emulator {
    uint public constant GAS_PER_BYTE = 447;
    function add(uint x, uint y) public returns(uint) {
        assembly {
            let _result := x + y
            let len := mload(add(x, y))

           let _returndata := return(0)

            ret len
        }
    }
}
