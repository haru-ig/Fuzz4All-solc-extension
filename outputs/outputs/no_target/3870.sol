pragma solidity ^0.8.0;
contract S10 {
        uint private x1 = 1;
        uint private x2 = x1;
        function change() public {
        x2 += 1;
     }
}
