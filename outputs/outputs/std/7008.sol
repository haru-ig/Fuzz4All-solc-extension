pragma solidity ^0.8.0;
contract Array1 {
   uint256[2] a;
   uint256[2] b;

   function subtraction() public {
        a[0]=-250;
        a[1]=170;
        b[0]=555;
        b[1]=-68;
        a[0]-=a[1];
        uint256[1] _arr = a;
        a=b;
        b=_arr;
    }
}
contract BitwiseAND {
    uint256 b;
    uint256 c;
    uint256 d;
    uint256 e;
    uint256 f;
    uint256 g;
}
contract BitwiseNOTAndCompare {
}
contract BitwiseOR {
}
