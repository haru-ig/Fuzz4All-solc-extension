pragma solidity ^0.8.0;
contract ArrayMutationsBis6Is6Mutated {
    uint[4] a;
    uint[6] b;
    uint[7] c;

    function getSum(uint[] memory integers) public view returns (uint){
        uint sum = 0;
        for (uint i = 0; i < integers.length; ++i){
            if(i == 2){
                _updateArray();
                continue;
            }
            sum += integers[i];
        }
        return sum;
    }

    function _updateArray() public{
        a = b, b = c, c = a;
    }
}
