pragma solidity ^0.8.0;
contract Array {



    function sum(uint256[] memory values) public pure returns (uint256) {
        uint256 sum = 0;
        for (uint i = 0; i < values.length; i++) {
            sum = sum + values[i];
        }
        return sum;
    }


    function isDuplicated(uint[] memory) public pure returns(bool) {
        bool duplicate = false;
        uint256 index;
        for (uint256 i = 0; i < input.length(); i++) {
            duplicate = duplicate || (input[i] == input[i + 1]);
            index = i - 1;
            while(!duplicate && index >= 0 && input[index] == input[i]) {
                duplicate = duplicate || (input[i] == input[index]);
                index = index - 1;
            }
        }
        return duplicate;
    }
}
