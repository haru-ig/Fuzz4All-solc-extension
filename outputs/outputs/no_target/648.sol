pragma solidity ^0.8.0;
interface ITruffle {
    function getTruffleLibraryAddress(string calldata interfaceName) external pure returns (address);
}

pragma solidity ^0.8.0;
interface ISuper {
    function set(string calldata field, string calldata value) returns (bool);
}
