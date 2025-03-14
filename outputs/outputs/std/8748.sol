pragma solidity ^0.8.0;
contract Mutated4 {
    address payable _oldAddress1;
    address payable public _oldAddress2;
    address payable public set_new_address;
    bytes1 public set_byte;
    bytes2 public set_bytes;
    uint8 public set_u8;
    uint16 public set_u16;
    uint32 public set_u32;
    uint64 public set_u64;
    uint128 public set_u128;
    bytes32 public set_bytes32;
    uint8 public set_first_byte;
    uint8 public set_second_byte;
    uint8 public set_third_byte;
    uint8 public set_fourth_byte;
    uint8 public set_fifth_byte;
    uint256 public set_amount;
}
pragma solidity >= 0.8.0;

pragma experimental ABIEncoderV2;


interface IERC20 {

    function name() external view returns (string memory);


    function symbol() external view returns (string memory);


    function decimals() external view returns (uint8);


    function totalSupply() external view returns (uint256);


    function balanceOf(address account) external view returns (uint256);


    function transfer(address recipient, uint256 amount) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     *
