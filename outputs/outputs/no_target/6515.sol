pragma solidity ^0.8.0;
interface I {
    function f(address x) public;
}
contract C{
    I x;
    constructor(){
        require(!x.f(address(9)));
    }
}

pragma solidity ^0.8.0;
contract Owned {

    function() {
        require(msg.sender == owner());
        _;
    }
}
contract Ownable is Owned {
    address public owner;

    address public newOwner;

    constructor() public {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }

    function changeOwnership(address o) public onlyOwner {
        newOwner = o;
    }

    function claimOwnership() public onlyOwner {

        owner = newOwner;
    }
}
pragma solidity ^0.8.0;
contract Token {

    function transfer(address to, uint256 value) public returns (bool);
}
contract Owned {
    address public owner;

    address public newOwner;

    constructor() public {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }

    function changeOwnership(address o) public onlyOwner {
        newOwner = o;
    }

    function claimOwnership() public onlyOwner {

        owner = newOwner;
    }
}
pragma solidity ^0.8.0;
contract IERC1888 {
    function version() external constant returns(bytes3);
    function supportsInterface(bytes4 interfaceId) external returns(bool);
    function setApprovalForAll(address operator, bool approved) external;
    function isApprovedForAll(address owner, address operator) external constant returns(bool);
    function call(address to, bytes memory data) external returns(
            bool success);
}
contract IERC1930 is IERC1888 {
    function execute(address operator, bytes memory data) external;
}

pragma solidity ^0.8.0;
contract Owned {

    function()
