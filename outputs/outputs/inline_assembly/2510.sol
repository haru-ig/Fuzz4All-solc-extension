pragma solidity ^0.8.0;
contract Comp4 {
    uint256 public _a;

    constructor() {
       _a++;
    }
    function get() public view returns (uint256) {
       _a += 10;
       return _a;
     }

     function increase() public {
       _a += 7;
     }
}
contract Comp5{
    string public description;

    constructor() {
        description = "Conor";
    }

    constructor() public {
        description = "Conor";
     }

    constructor() public payable {
        description = "Conor";
    }

    constructor() public pure {
        description = "Conor";
    }

    modifier adminOnly {
        require(msg.sender == address(this), "Wrong Admin");
        _;
    }

    function getAdmin() public pure returns(string memory) {
        return description;
    }
    function updateAdmin(string calldata s) public adminOnly {
        description = s;
    }
}
