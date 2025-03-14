pragma solidity ^0.8.0;
contract ArrayMutationsB is ArrayMutationsA {
    uint256 test;
    mapping (uint256 => bytes32) memory bytesToHash;
    function addNewElement2() public onlyIfArrayIsEmpty {
        array.push(test);
        bytesToHash[test] = "Test1";
        currentLength++;
    }
    modifier onlyIfPreviousWasMutated {
        if(isMutated == true) {
            _;
        } else {
            require(false);
        }
    }
}
