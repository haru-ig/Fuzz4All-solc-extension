pragma solidity ^0.8.0;
contract SolveWithModul is ERC165 {
   bytes32 public constant interfaceName = "0x01ffc901";
   struct Vat {
      mapping(address => uint) public balance;

      function() external payable {}
   }

   function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
      return interfaceId == bytes4(keccak256(abi.encodePacked(interfaceName)));
   }

   function getVat(address owner) public view returns (Vat storage v){
      Vat memory _vat;
      v = _vat;
   }
}

pragma solidity ^0.8.0;
contract SolveWithModul is ERC165 {
   bytes32 public constant interfaceName = "0x01ffc901";
   struct Vat {
      mapping(address => uint) public balance;
      address[] public vats;
   }
   Vat public vat;

   event Transfer(address indexed _from, address indexed _to, uint _value);
   event Ban(address _account);

   uint public constant test3 = 100;
   uint public constant test1 = 100;

   function solve() public pure returns (uint) {
      uint r;
      if (test1 == 0) {
         r = 1;
      } else {
         uint i = 0;
         while (i < 10) {
             i++;
         }
         r = 2;
      }
      return r;
   }


   function ban(address _account) onlyOwner public {
      emit Ban(_account);
   }


   function batchBan(address[] memory _toAddress) onlyOwner public {
      emit Ban(_toAddress[0]);
      for (uint i=1; i<_toAddress.length; i++) {
         emit Ban(_toAddress[i]);
      }
   }
