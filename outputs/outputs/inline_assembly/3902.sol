pragma solidity ^0.8.0;
contract SemanticallyEquivalent19 {
  function bar(int a) public pure returns (int b){
    assembly {


      b := a

      mstore 1, mload 1
    }
  }
  function foo() public pure {
    assembly {

      mstore 1, 0

      let a := mload 1
      a := add(a, 1)

      mstore 1, a
    }
  }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent20 {
  address private _contract;
  event Received(uint value);
  constructor(address contractAddress) public {
    _contract = contractAddress;
  }
  function sum(int[] memory numbers) public pure returns (int sum){
    assembly {


      for { let j := 0 } lt(j, 0) { j := add(j, 1) } {}

      sum := 0
      for { let i := 0 } lt(i, 10) { i := add(i, 1) } {
        u := mload(add(add(add(numbers, i), 4), 1))
        sum := add(sum, u)
      }
    }
  }
  function sumInArrayMemory(int[] memory numbers) public pure returns (int sum) {
    return sum(numbers);
  }
  function setContractAddress(address _contract) public onlyOwner {
    _contract = _contract;
  }
  function callContract() public onlyOwner returns(int sum){
    sum = sumInArrayMemory([1,2,3,4,5,6,7,8,9,10]);
  }
  function receiveContract(uint _value) public onlyOwner {
    emit Received(_value);
  }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent21 {
  mapping(uint => uint) private _mapping;
  uint constant INITIAL_STATE = 2;
  uint constant AMOUNT = 99;
  constructor() public {
    _mapping[uint(INITIAL_STATE)] = AMOUNT;
  }
  function value(uint _amount) public view returns (uint) {
    return _
