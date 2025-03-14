pragma solidity ^0.8.0;


contract IERC20Token {
    function totalSupply() public view returns (uint256) {}
    function balanceOf(address account) public view returns (uint256) {}
    function transfer(address to, uint wadValue ) public returns (bool) {}
    function approve(address spender, uint256 wadValue) public returns (bool) {}
    function allowance(address owner, address spender) public view returns (uint256) {}
}

contract IERC20 extends IERC20Token {


}
pragma solidity >=0 ^0.8.0;

contract ERC20 is IERC20 {
   function decimals() public view virtual override returns (uint8) {
      return 8;
   }
}
pragma solidity >=0 ^0.8.0;

contract B is ERC20 {
   function balance() public view virtual override returns (uint256) {
      return 20;
   }
}
pragma solidity >=0 ^0.8.0;

contract C is B {
   function ()external payable {}
}

contract D is C {
    function () public payable {}
}

contract B2 is ERC20 {
   function balance() public view virtual override returns (uint256) {
      return 20;
   }
}

contract B3 is B2 {
   function balance() public view virtual override returns (uint256) {
      return 60;
   }
}


contract D2 is B3 {

}
pragma solidity >=0 ^0.8.0;

contract BC is B, C {}
pragma solidity >=0 ^0.8.0;

contract D3 is D {

}

contract B4 is B {
   function balance() public virtual override returns (uint256) {
      return 20;
   }
   emit BEvent(bytes1[] memory, bytes memory, uint8);
}

contract B5 is B4 with {

}

contract B6 is B4 with B3 {

}

contract B7 is B4 with B7 {
   function balance() public virtual override returns (uint256) {
      return 60;
   }
}

contract B8 is
