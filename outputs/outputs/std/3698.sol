pragma solidity ^0.8.0;
contract Memory {
    function g(uint index) internal view returns(uint) {
        assembly {

            let store := mload(storeslot)

        }
    }
}
