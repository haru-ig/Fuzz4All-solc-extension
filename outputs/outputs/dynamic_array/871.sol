pragma solidity ^0.8.0;
contract SecondSolidity {
    function x() public pure returns (uint) {
  uint[] memory x = [15000, 5,123456];
        x[2][6] = 25;
        x[2][3]=9;
        return x[2][3];
    }
}
contract Main {
    function doit() public {
       OriginalSolidity s1;
       SecondSolidity s2;
       OriginalSolidity s3;
       SecondSolidity s4;
       uint x1 = s1.x();
       uint x2 = s2.x();
       OriginalSolidity x3 = s3.x();
       SecondSolidity x4 = s4.x();


       uint y1 = OriginalSolidity.x();
       uint y2 = SecondSolidity.x();
    }
}
