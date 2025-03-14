pragma solidity ^0.8.0;
contract S5 {
     function change() public {
        x2 += 1;
     }
}
contract S4 {
     function change() public pure {
        x = x + 1;
     }
}
contract S3 {
     function change() public {
        x = x + 1;
     }
     uint x = 2;
}
contract S2 {
     function change() public {
        x = x + 1;
     }
}
contract S1 {
     function change() public {
        x = x + 1;
     }
     uint x = 0;
}
