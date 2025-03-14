pragma solidity ^0.8.0;
contract Test {
    mapping(uint => uint) public store;
    uint stored;
    mapping(uint => uint[]) public array;
    function MutateData() public {

        array[15] = [5, 8, 7, 13];
        array[17] = [6, 15, 8, 17];
        array[22] = [12, 9, 8, 15];
        array[31] = [7, 9, 12, 31];
        stored += 7;
        stored += 12333;

        stored -= 313;
        require(array[29] == [7, 9, 12, 31, 0, 0, 0, 0, 0], "FAIL4");
        require(array[38] == [6, 15, 8, 17, 29, 0, 0], "FAIL5");
        require(array[11] == [5, 8, 7, 13, 25, 0, 0], "FAIL6");
        require(array[35] == [6, 15, 8, 17, 0, 0, 0], "FAIL7");
        require(array[24] == [5, 8, 7, 13, 0, 0, 0], "FAIL8");

        stored /= 343;
        require(array[29] == [7, 12], "FAIL9");
        require(array[38] == [5, 22], "FAIL10");

        stored == 37977? true : false;
        stored == 14114? true : false;
        stored == 70319? true : false;
        require(array[35] == [15, 0, 0, 0], "FAIL11");

        require(stored == 21, "FAIL1
