pragma solidity ^0.8.0;

import "../solidity/Array.sol";
contract ArrayMutations {
    Array.ArrayMutationsBis public arrayModBis;
    function test() public {
            arrayModBis.addNewElement();

            arrayModBis[1];
            assert(arrayModBis.isMutated);


    }


}
