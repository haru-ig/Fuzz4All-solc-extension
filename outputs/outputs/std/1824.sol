pragma solidity ^0.8.0;


pragma solidity ^0.8.0;
contract Counter {
    uint256 public last;
    event Mined(uint _time);
    function Counter() {
        last = 0;
    }
    function count() public pure returns (uint256) {
        return last;
    }
    function increment() public {
        last++;
        Mined(block.timestamp);
    }
}
pragma solidity ^0.8.0;

pragma solidity ^0.8.0;
import "./IERC20.sol";
contract IERC20 is IERC20Minimal {

    event Transfer(address indexed from, address indexed to, uint256 value);
}
pragma solidity ^0.8.0;

pragma solidity ^0.8.0;

interface IERC20Minimal is IERC20 {

    function totalSupply() external view returns (uint256);


    function balanceOf(address account) external view returns (uint256);


    function transfer(address recipient, uint256 amount) external returns (bool);
}
pragma solidity ^0.8.0;

interface IERC721 is IERC721Enumerable, IERC721Metadata, IERC721TokenTransferReceiver {

    event Transfer(address indexed from, address indexed to, uint256 indexed tokenId);


    event Approval(address indexed owner, address indexed approved, uint256 indexed tokenId);


    event ApprovalForAll(address indexed owner, address indexed operator, bool approved);


    function balanceOf(address owner) external view returns (
