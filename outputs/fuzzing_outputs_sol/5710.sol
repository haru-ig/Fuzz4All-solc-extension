pragma solidity ^0.8.0;
contract semanticallyequivalent17
{
    uint public x;
    uint public y;
    uint public z;
    modifier z_not_0() {
        require(z!=0,"Zero");
        _;
    }
    modifier z_greater_than_0() {
        require(y<=z,"Invalid zero condition");
        _;
    }
    function test() public payable z_not_0 z_greater_than_0 {
        x = z;
        y = 10;
        z = y * 2 + 1;
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract semanticallyequivalent18 {
  receive() external payable {}
   function getAddress(address addr) returns (string memory) {
      return string(abi.encodePacked(addr));
   }
}
pragma solidity ^0.8.0;
contract semanticallyequivalent19
{
    uint public x;
    address public a;
    uint public b;
    modifier b_not_0() {
        require(b!=0,"Zero");
        _;
    }
    modifier addressp_notnull() {
        require(a!=address(0),"Null");
        _;
    }
    function test() public payable b_not_0 addressp_notnull {
        x = 2 * 3;
        a = address(this);
        b = 1;
    }
    function test2() public payable b_not_0 addressp_notnull {
        x = 2 * 3;
        a = a;
        b = b * 2;
    }
    function test3() public payable b_not_0 addressp_notnull {
        x = 2 * 3;
        a = a;
        b = 2;
    }
}

pragma solidity ^0.8.0;
    contract semanticallyequivalent20
    {
        uint public x;
        address public a;
        uint public b;
        constructor(uint _x) public {
            x = _
