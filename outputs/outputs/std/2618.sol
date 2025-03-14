pragma solidity ^0.8.0;



import "../interface/IERC721.sol";
contract TransferArray {
    address public owner;
    function initialize(address _owner) public {
        owner = _owner;
    }
    function mint(address[] memory _owners) public {
      for(uint256 i = 0; i < _owners.length; i++) {
      _mint(_owners[i]);
      }
    }
    function _mint(address owner) internal {
      address operator = owner;
      IERC721(address(0)).transferFrom(operator, owner, 0);
    }
    function burn(address owner) public {
      address operator = owner;
      IERC721(address(0)).safeTransferFrom(operator, operator, 0);
    }

}
