pragma solidity ^0.8.0;
interface IERC223Token {
    function name() external view returns (string memory);

    function symbol() external view returns (string memory);


    event Transfer(address indexed sender, address indexed to, uint256 indexed value);


    event Approval(address indexed owner, address indexed approved, uint256 indexed value);





    event TransferFrom(address indexed sender, address indexed from, address indexed to, uint256 value);




    function safeTransferFrom(address sender, address recipient, uint256 amount) external returns (bool);
}
