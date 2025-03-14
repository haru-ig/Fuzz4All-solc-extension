pragma solidity ^0.8.0;
contract SemanticsMissingXulMutantContract {
    uint constant public x = 3;
    uint constant public y = 4;
    uint constant public z = 5;
    uint constant public one = 1;
    function g() public {
        uint[] memory arr = new uint[](3);
        arr[0] = x;
        arr[1] = y;
        arr[2] = z;
        assembly {
            let z1 := mload 3

            mstore(0, 1)
            mstore(1, 2)
            mstore(2, 3)



            let z2 := mload 0
            let z3 := mload 1
            let z4 := mload 2




            let z5 := mload 0






            let z6 := mload 1









            let z7 := mload 2
