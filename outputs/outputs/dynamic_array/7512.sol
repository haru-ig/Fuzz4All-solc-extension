pragma solidity ^0.8.0;

contract Test43_DynamicArray3 {
    address[] public admin;
    constructor () public {
        admin.push(owner());
        admin.push(admin[1]);
    }
    modifier restricted() {
      require(_checkAdmin(msg.sender), "You need to be an admin!");
      _;
    }
    function owner() internal pure returns (address) { return msg.sender;}
    function _checkAdmin(address admin) internal view returns(bool result) {
      for (uint i = 0; i < admin.length; i++) {
        if (msg.sender == admin[i]) {
          result = true;
          break;
        }
      }
      return result;
    }
    function _setAdmin() public restricted {
        admin.push(owner());
    }
}
