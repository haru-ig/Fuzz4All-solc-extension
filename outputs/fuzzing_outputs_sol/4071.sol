pragma solidity ^0.8.0;
contract Mutation7 {
  function myMutant() public {
    uint256 x;
    x = Mutant2(uint256(1), _msgSender()).my_fallback();
    x = Mutant2(uint256(2), _msgSender()).my_fallback();
    x = Mutant2.callto(uint256(3));
    x = Mutant2.callto(uint256(4));
    x = new Mutant4().my_fallback();
    x = new Mutant4().my_fallback();
    x = new Mutant4().my_fallback();
    x = new Mutant5().my_fallback();
    x = new Mutant5().my_fallback();
    x = new Mutant5().my_fallback();
    x = new Mutant6().my_fallback();
    x = new Mutant6().my_fallback();
    x = new Mutant6().my_fallback();
  }
  function my_fallback() public pure returns(uint8) {
        return 88;
  }
}
contract Caller {
  function Caller1() public payable {
    Mutant1 c;
    c = Mutant2(uint256(1), msg.sender());
    c = Mutant2.callto(uint256(2));
    c = new Mutant1();
  }
}
