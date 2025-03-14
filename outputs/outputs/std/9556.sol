pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
  contract Mutate11x{
    uint public i11;
  }



pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract Mutate13x {
   uint public i13;
}


pragma solidity ^0.8.0;

contract Predef {

    function newFunction() public pure {}

    function newFunction2() public pure returns (uint) { return 0; }

    function newFunction3(uint i) public pure {}

    function newFunction4(uint i, uint j) public pure returns (uint) { return (j-i)%20; }
}

contract Predef2 is Predef {

    function newFunction5() public pure returns (bool) { return true; }

    function newFunction6() public pure returns (bool) { return false; }

    function newFunction7(bool b) public pure { return; }

    function newFunction8() public pure { return; }
}


pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract PredefContract{
    address payable public signer_addr;
    address public signer
