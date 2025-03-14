pragma solidity ^0.8.0;
contract VotingInterface {
    bytes32 public constant SIGNATURE = keccak256("setVote(uint256)");
    function setVote(uint256 v) public pure {
    }
}
contract Delegable {
    struct State {
        address public owner;
    }

    event Delegated(address indexed delegate, bytes32 indexed signature, bytes data);

    function delegate(address delegate, bytes32 signature, bytes calldata data) public {
        bytes32 hash = keccak256("{0x06000000000000000000000000000000000000000000000000000000000000}{0x0000000000000000000000000000000000000000000000000000000000000000}");
        require(delegate!= delegatee(), "cannot delegate self");
        Delegator storage delegator = Delegator(delegators(delegate));
        (uint8 v, bytes32 r, bytes32 s) = extractData(data, hash);
        address addr = ecrecover(keccak256("eip712Verify(bytes32,bytes32,bytes32,address)"), r, s, signature);
        require(addr == delegate, "delegatee mismatch");
        delegator.signature = signature;
        delegator.data = data;
        emit Delegated(delegate, signature, data);
    }


    assembly {
        delegatorSlot := delegator + 1
    }

    address public immutable delegatee;

    constructor(address _delegatee) {
        delegatee = _delegatee;
    }

    function delegators(address a) public view returns (Delegate storage) {
        assembly {


            delegatorSlot := delegatorSlot - 1
            delegator := mload(delegatorSlot)
        }
    }


    function delegatedBy(bytes32 signature) public view returns (address) {
        Delegate storage delegator = delegators(delegatee);

        assembly {

            switch delegatorSlot
            switch case 0 case div(gas, 2):
                delegate := sload(deleg
