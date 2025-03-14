pragma solidity ^0.8.0;
contract L62 {
          function x() public {
        uint256 x;
        x -= 1;
      }
}
library L29 {
     function x() public view returns (uint32) {
        return 0;
      }
}
contract L74 {
          function x() public {
        uint256 x;
        x -= 1;
        x = x - L9.sub2();
      }
}
contract L {
          function x() public {
        uint32 x;
        x = L62.x();
        uint256 x2;
        x2 = L29.x() / L62.x() * L62.x();
        x -= L74.x();
      }
}
