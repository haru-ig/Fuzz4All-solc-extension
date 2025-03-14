pragma solidity ^0.8.0;
contract Main {
    address public owner;
    mapping(address => bool) public blackboxes;
    mapping(address => bool) public blackboxes2;
    event BlackboxCreated(address indexed owner);
    function createBlackboxes() public { blackboxes[msg.sender] = false;  blackboxes2[msg.sender] = true;}
    function updateBlackboxes() public returns (bool) {
        if (blackboxes[msg.sender]) { return false; }
        if (blackboxes2[msg.sender]) {
            blackboxes[msg.sender] = true;
            blackboxes2[msg.sender] = false;
            emit BlackboxCreated(msg.sender);
        }
        return false;
    }
}





pragma solidity >=0.4.22 <0.8.0;

contract ReentrancyGuard {
    uint256 private _guardCounter;
    address private _owner;

    constructor () {

        _owner = msg.sender;
        _guardCounter = 0;
    }


    modifier canCall() {
        uint256 localCounter = _guardCounter + 1;
        if (block.timestamp < _guardCounter || localCounter > 20) {
            _guardCounter = localCounter;
            _;
        } else {
            assembly {
                revert(0, 0)
            }
        }
    }
