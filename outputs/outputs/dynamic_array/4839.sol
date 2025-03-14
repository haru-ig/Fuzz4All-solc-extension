pragma solidity ^0.8.0;
contract Test5 {
    uint[] my_vector = [];
    function MutatedTest() public {
        my_vector[0]= 7;
        my_vector[1]= 80;
        my_vector[2]= 999;
        my_vector[3]= 554;
        my_vector[4]= 666;
    }
}
