pragma solidity ^0.8.0;
contract Mutated is Ownable, Initializable {
    bool public canMutate = false;
    function initialize() public initializer {
        _assignOwnership();
    }
    receive() external payable whenNotPaused {

    }
    function changeOwnership(address _newOwner) public onlyOwner {
        _assignOwnership();
        owner = _newOwner;
    }
    payable public lastPayable;
    function startMutating(address _lastPayable) public onlyOwner {
        _canMutate(msg.sender);
        lastPayable = _lastPayable;
        canMutate = true;
    }
    function stopMutating() public onlyOwner {
        _canMutate(msg.sender);
        lastPayable = address(0);
        canMutate = false;
    }
    function _assignOwnership() internal {
        ownableSelfdestruct(_newOwner);
    }
    function _canMutate(address _from) internal {
        if (_mutator == _from) {
            revert();
        }
    }
    address public _newOwner;
    function ownableSelfdestruct(address _target) internal {
        if(isContract(_target)) {
            IERC1155(_target).safeTransferFrom(msg.sender, _target, 0, 0, "");
        }
        _target.transfer(msg.value);
    }
    bytes32 public _id;
}
