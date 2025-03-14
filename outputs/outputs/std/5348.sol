pragma solidity ^0.8.0;
contract MutationExample {
    uint256 start = 100;
    uint256 x = 10;
    bool[8] private mutual_exclusion;
    uint256 private random_number;
    string private string_to_compare;

    function getRandomInteger() private returns (uint) {
        for(;;){
            random_number = start + uint(keccak256(abi.encodePacked(blockhash(block.number-1), block.difficulty, x), blockhash(block.number))));
        }
    }

    function startMutualExclusionTest() public{
        mutual_exclusion[0] = true;
        mutual_exclusion[1] = true;
        mutual_exclusion[2] = false;
        mutual_exclusion[3] = true;
        mutual_exclusion[4] = false;

        startMutualExclusion();
    }

    function stopMutualExclusionTest() public onlyMutualExclusion(0) {
        random_number = start;
    }

    function startMutualExclusion() private {
        uint random_number;
        uint k;

        for(k; k < mutual_exclusion.length; k++) {
            if(mutual_exclusion[k]) {
                random_number = getRandomInteger();

                for(; i < mutual_exclusion.length; i++) {
                    mutual_exclusion[i] = (k + (k > 1)) ^ (k > 1);
                }

                break;
            }
        }
    }
}
