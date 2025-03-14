pragma solidity ^0.8.0;

contract L9 {
   uint256 public constant FATEFUL = uint256(1) << 255;
   function fateful() public pure returns (uint256) {
       return FATEFUL;
   }
}
pragma solidity ^0.8.0;
contract L10 {
   uint256 public constant BEST = uint256(1) << 255;
   function best() public pure returns (uint256) {
       return BEST;
   }
}
pragma solidity ^0.8.0;

contract L11 {
   function add1() public returns (uint256) {
       return 1;
   }
   function add2() public returns (uint256) {
       return 2;
   }
}
pragma solidity ^0.8.0;
contract L12 {
   function add1() public pure returns (uint256) {

      return 1;
   }
   function add2() public pure returns (uint256) {

      return 2;
   }
}
contract L13 is L12 {
   uint256 public added;

   function add1() public pure returns (uint256) {

      return 3;
   }
   function add2() public pure returns (uint256) {

      added = added + 1;

      return added;
   }

}


contract L14 {
address public adr;

    constructor (address addr) public {
        adr = addr;
    }
    function () external payable { }


}
