pragma solidity ^0.8.0;
import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/IERC721Receiver.sol';
contract Ownable {
    address payable internal _owner;
    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    constructor() {
        _owner = msg.sender;
    }
    function owner() public view returns (address payable) {
        return _owner;
    }

    modifier onlyOwner {
        require(isContract(_owner), "Ownable: caller is not contract");
        _;
    }

    function renounceOwnership() public onlyOwner {
        emit OwnershipTransferred(_owner, address(0));
        _owner = address(0);
    }

    function transferOwnership(address payable newOwner) public onlyOwner {
        _transferOwnership(newOwner);
    }

    function _transferOwnership(address payable newOwner) internal {
        require(newOwner!= address(0), "Ownable: new owner is the zero address");
        emit OwnershipTransferred(_owner, newOwner);
        _owner = newOwner;
    }

    function isContract(address account) internal view returns (bool) {
        uint size;
        assembly { size := extcodesize(account) }
        return size > 0;
    }
}
protocol ERC721 is ERC721Receiver, Ownable {
  function transferFrom(address from, address to, uint256 id) external returns (bool);
  function safeTransferFrom(address from, address to, uint256 id) external;
}

pragma solidity ^0.8.0;
contract FarmHouse is ERC721 {

    struct Farm {
    uint8 x_pos;
    uint8 y_pos;
    uint256 seed;
    string crop;
    uint256 growthRate;
    uint256 harvestPrice;
    uint256 harvestValue;
    uint256 value;
    uint256 totalHarvested;
    uint256 totalMint;
    uint256 totalSold;
    uint256 totalReceived;
    uint256 totalHarvestedAt
