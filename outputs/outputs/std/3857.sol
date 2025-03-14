pragma solidity ^0.8.0;


pragma solidity >=0.8.0;
contract Pausable is Initializable {

    event Paused(address account);

    bool private paused_;


    function initialize() public initializer {
        paused_ = false;
    }


    function paused() public view returns (bool) {
        return paused_;
    }


    modifier whenNotPaused() {
        require(!paused_, "Contract is paused");
        _;
    }


    modifier whenPaused() {
        require(paused_, "Contract is not paused");
        _;
    }


    function pause() onlyOwner whenNotPaused public {
        paused_ = true;
        emit Paused(_msgSender());
    }


    function unpause() onlyOwner whenPaused public {
        paused_ = false;
        emit Unpaused(_msgSender());
    }
}
