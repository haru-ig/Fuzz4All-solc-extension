pragma solidity ^0.8.0;
interface Ownable is Accountable {
    function transferOwnership(address newOwner)external returns (bool success);
    function owner()external view returns (address);
}


pragma solidity ^0.8.0;
