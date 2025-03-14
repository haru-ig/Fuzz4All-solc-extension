pragma solidity ^0.8.0;
contract Mutant3b is Mutant3a
{
  function () external payable {
    address(this).balance;
    address(this).balance;
  }
}


pragma solidity ^0.8.0;
contract Mutant4a
{
  uint256 private test;
  constructor() public {
      test = 42;
      test = 22;
  }
  receive() external payable {}
}


pragma solidity ^0.8.0;
contract Mutant4b is Mutant4a
{
  address payable[] myAddress;
  uint256[] myUint256;

  function () external payable {
    for (uint i = 0; i < 100; i++) {
        myAddress.push(address( Mutant3a( ) ));
        myUint256.push(uint256( Mutant3a( ) ));
    }
  }
}


pragma solidity ^0.8.0;
contract Mutant5
{
  modifier onlyWhenCalled() {
        uint test = 2;
        uint b = test;
        assert(address(0xf944a625c92784f033c886b3ef3c6852d3bc4cd9).balance == test);
        assert(address(0xc59be4b014fdcd94f22bd94c45051fc4c31984bf).balance == test);


        _;
  }
  modifier onlyAfterMutant3aCheck() {
        uint test = 2;
        assert(address(0xf944a625c92784f033c886b3ef3c6852d3bc4cd9).balance ==
