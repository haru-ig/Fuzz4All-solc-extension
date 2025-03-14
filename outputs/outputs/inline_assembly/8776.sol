pragma solidity ^0.8.0;

contract Test
{


    function value() public view returns (bool) {
        assembly {
            let v := mload(0x40)
            return eq(0, v)
        }
    }
}
