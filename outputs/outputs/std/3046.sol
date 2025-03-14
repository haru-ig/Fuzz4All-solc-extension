pragma solidity ^0.8.0;
interface IERC2981 {


    function setApprovalForAll(address operator, bool approved) external;
    function isApprovedForAll(address account, address operator) external view returns (bool);
}

pragma solidity ^0.8.0;
interface IERC1939 {
    function initialize(address _owner) external;
    function setOwner(address _owner) external;
    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    event SetOwner(address indexed currentOwner,address indexed previousOwner,address newOwner);
}
