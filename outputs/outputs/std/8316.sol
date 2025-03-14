pragma solidity ^0.8.0;
contract ArrayMutationsB is ArrayMutationsA {
    function modifyElements() public onlyIfArrayIsEmpty {
        isMutated = true;
        array[1] = 882;
    }
}
