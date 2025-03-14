pragma solidity ^0.8.0;

contract Test {

    address public owner;
    uint256 private value = 0;

    message Transfer {
        address to;
        uint256 value;
    }

    event Transfer(
        address indexed from,
        address indexed to,
        uint256 value
    );


    constructor () {
        owner = msg.sender;
    }


    function transfer(address from, address to, uint amount) public {

        require(amount > 0);


        require(from!= address(0));


        address oldOwner = owner;
        if (oldOwner!= to) {
            owner = to;


            value = 0;
            emit Transfer(oldOwner, to, value);
        }
    }
}
