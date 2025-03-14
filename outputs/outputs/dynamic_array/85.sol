pragma solidity ^0.8.0;
contract B {
    A a;
    uint256[] bArray;
    uint256[] bArray2;
    uint256[] bArray1;

    constructor() {
      a.bArray.push(1);
      a.bArray.push(2);
      a.bArray1.push(3);
      a.bArray2.push(4);
    }
}
pragma solidity ^0.8.0;
contract C {
    function() payable external {
        B(uint128(0)).a.bArray = [5, 6];
        B(uint128(0)).a.bArray1 = [7, 8];
        B(uint128(0)).a.bArray2 = [9, 10];
    }
}
