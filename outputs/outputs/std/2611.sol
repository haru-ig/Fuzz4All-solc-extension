pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/IERC721.sol";

contract Basket {
    uint public tokenNum = 0;
    mapping(uint256 => address) userToItem;
    mapping(address => uint256) userToItemLen;
    mapping(address => string) userToItemURL;
    mapping(uint256 => string) token;
    mapping(string => bool) userToItemBanned;


    modifier onlyBasket() {
        assembly {
            let temp := mload(0x40);
            switch mload(0x40)

            case 0 {
                mstore(0x40, add(temp, 0x20))
                break
            }

            case add(temp, 0x20) {
                revert(0, 0)
            }
        }
        _
    }
    constructor() {}


    modifier onlyOwnOrBasket(address _account) {
        address currentAddress = _account;
        address selfAddress = address(this);
        if (selfAddress == currentAddress) {
            _;
        } else if (userToItem[currentAddress]!= 0) {
            _;
