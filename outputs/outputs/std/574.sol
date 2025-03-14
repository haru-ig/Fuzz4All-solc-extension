pragma solidity ^0.8.0;
contract HelloWorld {
  function hey() public pure returns (string memory) {
    return "Hello";
  }
}}
pragma solidity ^0.8.0;
contract HelloWorld {
  constructor() public {

    address person = address(new HelloWorld());
  }
}}
pragma solidity ^0.8.0;
contract HelloWorld {
  constructor() public {

    address person = address(this);
  }
}
