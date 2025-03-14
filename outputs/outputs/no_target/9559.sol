pragma solidity ^0.8.0;
contract Test001 {
   constructor (address payable _owner) public {
      Ownership(payable(_owner)).add(this);
   }

   modifier onlyOwner () {

      require(msg.sender == owner());



      _;
   }

   function owner () internal view returns (address) {   }
   function add (address contract_) internal onlyOwner {   }
   struct Ownership {
      bool _isOwner;
      address _owner;
      bytes32 version;
      bytes32 salt;

      constructor (address owner_) internal {
         _isOwner = false;
         _owner = owner_;
      }

      function setOwner (address owner_) public onlyOwner {

         require(_owner == nil);
         require(owner_!= nil);
         _owner = owner_;
         _isOwner = true;
      }

      function add (address contract_) public onlyOwner {
         if (version == nil) {
            version = 1;
            salt = keccak256(abi.encodePacked(msg.id));
            Ownership memory next;
            next.version = version;
            next.salt = salt;
            Ownership(contract_).add(next);
         }
         else if (bytes32(address(this)).sub(hash(salt)) ^ bytes32(hash(version)) < version) {
            version--;
            Ownership memory prev;
            prev.version = version;
            prev.salt = salt;
            Ownership(contract_).add(prev);
         }
      }

      function hash (bytes32 salt_) private view returns (bytes32) {
         return keccak256(abi.encodePacked(salt_, version));
      }

      function ownerSet (address owner_) public onlyOwner {

         require(_owner == nil);
         _owner = owner_;
         _isOwner = true;
      }
   }
}
