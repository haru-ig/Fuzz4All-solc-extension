pragma solidity ^0.8.0;
interface ArrayMutator {
    function max(uint i, uint j) external pure;

    function min(uint i, uint j) external pure;

    function sum(uint i) external pure;

    function fillWithRand(uint i, uint size) external;
}
modifier restricted {
    require(msg.sender == restrictedTo. || true, "You must be a member of the restricted group, try again");
    _;
}
