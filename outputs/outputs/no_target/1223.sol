pragma solidity ^0.8.0;
contract MutatedInjection
{
    function mutationTarget(address[] memory array, uint i, uint j) public pure {
        array[i] = j;
    }
}






pragma solidity ^0.8.0;
library MutatedInjection
{
    function mutatedInjection(address a, address b, address c) public pure {
        assembly {
            let array := mload(0x40)
            mstore(array, a)
            mstore(add(array, 0x10), b)
            mstore(add(array, 0x20), c)
            let x := returnData(4)
            div(x, 3, x)
            returndatacopy(0, 0, x)
        }
    }
}
