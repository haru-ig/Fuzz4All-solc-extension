pragma solidity ^0.8.0;
contract ContractWithFallback15 {

  function modify(address addr1, address addr2, uint x) public payable {
    emit Emitted(addr1, addr2, x);
    addr1.call{value: x}('');
  }
  event Emitted(address addr1, address addr2, uint x);
}
contract ContractWithFallback11 {

  function modify(address addr1, address addr2, uint x) public payable {
    emit Emitted(addr1, addr2, x);
    addr1.call{value: uint(-1)}('');
  }
  event Emitted(address addr1, address addr2, uint x);
}
contract ContractWithFallback17 {

  fallback () external payable {
    uint16 minter = address(this).balance;
    uint expected = getMinter(msg.data);
    emit MinterFound(msg.sender, minter, expected);
    require(minter == expected);


    revert();
  }

  function getMinter(bytes calldata calldataData) public pure returns (uint) {
    return keccak256(calldataData);
  }

  event MinterFound(address minter, uint minterValue, uint foundValue);
}
contract ContractWithFallback10 {

  fallback () public payable {
    uint expected = keccak256();

    emit ExpectedMinterSet(msg.sender, expected);


    revert();
  }

  event ExpectedMinterSet(address minter, uint foundValue);
}

contract ContractWithFallback9 {

  fallback () public payable {
    uint expected = getMinter();

    revert(expected);
  }

  function getMinter() public pure returns (uint) {
    return 1650;
  }

  event MinterFound(uint minter);
}
contract ContractWithFallback8 {
  fallback () external payable {
    uint minter = address(this).balance;
    uint expected = getMinter();
    emit MinterFound(msg.value, minter, expected);


    revert();
  }

  function getMinter() public pure returns (uint) {
    return 1650;
  }

  event MinterFound(uint minterValue, uint minter,
