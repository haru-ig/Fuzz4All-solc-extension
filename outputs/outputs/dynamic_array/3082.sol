pragma solidity ^0.8.0;
contract AssignmentModulation_V7 {
    uint[] public x;
    uint public w;
    uint public y1;
    uint public y2;
    uint public y3;

    constructor() public {
        w = 0;
        y1 = 0;
        y2 = 10;
        y3 = 20;
    }
    function set(uint value) public {
        w = value;
    }
    function getAndStore() public returns(uint){
        return y1;
    }
}

pragma solidity ^0.8.0;
contract AssignmentModulation_V7 {
    address payable public accountA;
    address payable public accountB;

    address[] public addressesA;
    uint16[] public aids;
    struct AssignmentModulation_V7 {
      uint8 w3;
      uint8 w2;
      uint8 y1;
      uint8 y2;
      uint8 y3;
   }
    constructor(address payable _accountA, address payable _accountB) {
      accountA = _accountA;
      accountB = _accountB;
      aids = new uint16[](3);
      aids[0] = 0;
      aids[1] = 1;
      aids[2] = 2;
      addressesA = new address[](3);
      addressesA[0] = addressA;
      addressesA[1] = addressB;
      addressesA[2] = addressA;

      addressB = address(this);
    }
    function setPairs_V5(uint _a) public{
        uint16 x = uint16(_a);
        aids[2] = x+1;
        aids[1] = uint16(-1*(x+1));
        w = uint(aids[x]) + uint(accounts.length);
      }

    function getAndStore() public returns(uint){
        return addressA.balance;
    }
    function setPair(uint16 _a, uint16 _b) public {
      aids[uint (_b)] = _a;
    }
    function getAddress
