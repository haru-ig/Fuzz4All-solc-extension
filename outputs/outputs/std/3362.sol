pragma solidity ^0.8.0;
interface ArrayMutatorMutator {

    function set(uint n, uint v) external;
    function get() external view returns (uint i);
}

pragma solidity ^0.8.0;
interface ArrayMutatorMutator {

    function setElement(uint index, uint v) external;
    function getElement(uint index) external view returns (uint);

    function get(uint index) external view returns (uint);


    function appendArray(address owner, uint elementCount, uint start) external;

    function isOwner(address owner) external view returns (bool);

    function length() external view returns (uint);
}
