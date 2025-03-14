pragma solidity ^0.8.0;
 contract Mutate {
   struct Node { uint val; uint next; }
   function setVal(uint val) public { head.val = val; head.next = 0; }
   function setNext(uint elem, uint next) public { head.next = next; }
}

pragma solidity ^0.8.0;
contract Number{
    function randomInt() public returns(uint){
        uint random = uint(uint(keccak256(abi.encodePacked(block.blockhash(block.number-3), now, address(this))))) % 10 + 1;
        return random;
    }
}
