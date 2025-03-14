pragma solidity ^0.8.0;
contract Basic {
    function noChange() public pure { }
}
contract Mutated {
    address public owner;
    address public previousOwner;
    function () public payable { }

    function _setOwner(address _owner) internal {
        require(_owner!= address(0), "Cannot set the zero address");
        require(previousOwner == address(0), "Cannot change the owner more than once");
        previousOwner = owner;
        owner = _owner;
    }

    function changeOwner() onlyOwner public {
        _setOwner(msg.sender);
    }
}
contract All {
    address public owner;
    address public previousOwner;
    function () public payable { }

    function _setOwner(address _owner) internal {
        require(_owner!= address(0), "Cannot set the zero address");
        require(previousOwner == address(0), "Cannot change the owner more than once");
        previousOwner = owner;
        owner = _owner;
    }

    function changeOwner() onlyOwner public {
        _setOwner(msg.sender);
    }
}

pragma solidity ^0.7.3;
contract Solidity {

    struct UserResult {
        uint balance;
        address owner;
    }

    function getUser(address _owner) view public returns (UserResult memory);

    function changeOwner(address newOwner) public {
        getUser(_owner).balance = 100;
        _;
    }
}
