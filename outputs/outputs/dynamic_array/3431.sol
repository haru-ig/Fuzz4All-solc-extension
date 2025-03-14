pragma solidity ^0.8.0;
contract C {
    address[][][] public array1;
    uint[][][] public array2;
    uint[][][] public array3;
    uint[][][] public array1_1;
    uint[][][] public array2_2;
    constructor() {
        array1.push([1]);
        array2.push([[2, 3], [2], [3], [4]]);
        array3.push([[1, 2], [2], [3], [4]]);
        array1_1.push([[]]);
        array2_2.push([[2], [3, 4, 5], [5], [7], [6], [5], [6]]);
    }
    function pushTest_1() public {
        array1[0].push(2);
        array2[0]
          .push([[2]], [[2]], [[2]], [[2]])
          .push([[2]], [[2]], [[2]], [[2]])
          .push([[2]], [[2]], [[2]], [[2]])
          .push([[2]], [[2]], [[2]], [[2]])
          .push([[2]], [[2]], [[2]], [[2]]);
        array3[0]
          .push([[2]], [[2]], [[2]], [[2]])
          .push([[2]], [[2]], [[2]], [[2]])
          .push([[2]], [[2]], [[2]], [[2]])
          .push([[2]], [[2]], [[2]], [[2]])
          .push([[2]], [[2]], [[2]], [[2]]);
        array1[0][1].push(2);
        array2[0][0][1].push([[17]], [[18]], [[19]]);
        array2[0][1][2].push([[19], [32]]);
        array2[0][2].push([[20, 200]], [[44, 334], [2843]]);
        array2[0][3] = 20;
        array1[0][0].push([[2]], [[2]], [[2]], [[2]]);
        array1[1][0].push([10]);
        array2[1][0]
          .push([[2]], [[2]], [[2]], [[2]]);
        array3[1][0]
          .push([[2]], [[2]], [[2]], [[2]])
          .push([[2]], [[2]], [[2]], [[2]])
          .push([[2]],
