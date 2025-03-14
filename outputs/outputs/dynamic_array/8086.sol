pragma solidity ^0.8.0;
library Bitwise {
    function get256(uint256 a) internal pure returns (uint256) {
        return a | (~a) >> 8;
    }
}
interface IFabric {
   function appendBytes(uint16 a) external;
}
contract Fabric {
    uint256 public x;
    IERC1155 public token;
    mapping(address => uint256) public balances;
    string private _name;
    string private _symbol;

    constructor() public {
        _name = "myEtherToken";
        _symbol = "ETC";
        token = IERC1155(address(0));
        token.safeTransferFrom(address(owner()), address(this), 1, "0x4012356", "");
    }

    function initialize(string memory name, string memory symbol) public {
        if (bytes(name).length > 0 && bytes(symbol).length > 0) {
            _name = name;
            _symbol = symbol;
        } else {

        }
    }

    function appendBytes(uint16 a) public {
        x = uint(a);
    }
}
