pragma solidity ^0.8.0;


contract M {
    address public owner;

    modifier onlyOwner {
        require(msg.sender == owner, "This function can only be called from the contract owner");
        _;
    }

    constructor()
        public
        {
            owner = msg.sender;
        }
    function setOwner(address newOwner) onlyOwner public {
        owner = newOwner;
    }
    }
assembly {

        function add (uint x, uint y) public view returns (uint) {
            return add(x, y, 0, 0)
        }


        function add(uint x_0, uint x_1, uint z_0, uint z_1, uint result, uint overflow)


        public pure returns (uint)
        {
            if overflow == 1 {
                overflow--
            }
            return add(x_0, x_1, z_0, z_1, overflow, 0)
        }
    }
