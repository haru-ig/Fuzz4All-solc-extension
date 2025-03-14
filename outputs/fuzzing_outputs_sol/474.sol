pragma solidity ^0.8.0;
contract Program3 is MutatedCaller1, MutatedCaller2, MutatedCaller3, MutatedCaller4, MutatedCaller5 {}


pragma solidity ^0.8.0;
contract Program4 {
    function nonMut(address payable _addr) pure external {
      _addr.transfer(address(this).balance);
    }
    function mut(address payable _addr) pure external {

      _addr.transfer(address(this).balance);
    }
}



pragma solidity ^0.8.0;
contract Program2 is MutatedCaller1, MutatedCaller2, MutatedCaller3, MutatedCaller4, MutatedCaller5 {
   event Emitted(address _addr);
   mapping(uint256 => address payable) public _addr;
   uint256 constant ETHER_ADDRESS_LENGTH = 1;
   uint256 public INDEX = 0;
    function nonMut(uint256 _index) payable external {
        address payable addr = _addr[_index];
        addr.transfer(address(this).balance);
    }

    function mut(uint256 _index) payable external {
       _addr[_index] = msg.sender;
       emit Emitted(msg.sender);
    }

}
