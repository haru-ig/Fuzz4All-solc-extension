pragma solidity ^0.8.0;
import "./m206.sol";
contract MyContract {
    string name;
    constructor(string memory _name) public {
      name = _name;
    }
    function display() public view returns (uint) {
        return 3 + name.length;
    }
}
