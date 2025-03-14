pragma solidity ^0.8.0;
contract Mutator{
    uint[] myArray;
    function main()public{
        uint[] init_0_one = uint[];
        uint[] init_1_two = uint[];
        uint[] init_2_three = uint[];
        uint[] init_3_four = uint[];

        uint[] init_4_five = uint[];
        uint[] init_5_six = uint[];

        init_0_one = init_1_two;
        init_4_five = init_5_six;
        myArray = init_0_one;
        myArray[0] = 0;
        myArray = init_4_five;
        myArray[2] = 1;
    }
}
