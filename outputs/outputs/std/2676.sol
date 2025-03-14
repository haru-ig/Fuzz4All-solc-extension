pragma solidity ^0.8.0;
contract ERC1271 is IERC1271 {
   address public _proxy;
   address public _owner;
   uint256 public _version;

   constructor(address owner_, uint256 version_) {
       _proxy = owner_;
       _owner = owner_;
       _version = version_;
   }
   function isApprovedOrOwner(address proxy, uint256) override public view returns(bool){
       if (_owner == proxy || _version > 1 ||!_proxy.isContract() ||!proxy.isContract() || proxy!= _proxy) return false;
       if (uint256(blockhash(block.number - 1))) return true;
       return false;
   }
   function approve(address proxy, uint256) override public {
      if (!owner().isContract()) revert();
      if (IERC1271(proxy).isApprovedOrOwner(_proxy, _version)) revert();
      owner_ = proxy;
   }
   function getApproved(address proxy) override public view returns(uint256) {
      if (IERC1271(proxy).isApprovedOrOwner(_proxy, _version)) revert();
      return uint256(owner_);
   }
   function owner() override public view returns(address){
      return _owner;
   }
}
