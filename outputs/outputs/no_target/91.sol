pragma solidity ^0.8.0;
interface IERC223 {
  function supportsInterface(bytes4 interfaceId) external view returns (bool);
  function call(address to, bytes memory data) public payable returns (bytes memory);
  function _authorize(address operator) internal returns (bool);
}


contract Sample is IERC223 {




  function test() public view returns (bool) {
    return true;
  }


  function () external payable returns (uint) {
    return 5;
  }
}
contract SampleWithFunctions {


  function _getDerivedData() internal returns (string memory derivedData) {
    return "derived";
  }

  function getDerivedData() public view returns (string memory derivedData) {
    derivedData = _getDerivedData();
  }
}
contract Derived is SampleWithFunctions {


  constructor() public SampleWithFunctions() {
    derivedData = "";
  }


  function () public payable override returns (uint) {
    derivedData = "override";
    return 5;
  }
}

contract ContractExample {
  IERC223 token;

  function createTokenInstance() public {
    token = IERC223(new Derived());
  }

  function () public payable {}

  modifier onlyTokenContract {
    require(address(token)!= address(0), "token contract is not deployed yet");
    _;
  }
}
contract Test is ContractExample {
  function () payable {
  }

  function test() public view returns(bool) {
    token.queryApproval(address(this), 0
