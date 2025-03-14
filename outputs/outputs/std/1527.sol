pragma solidity ^0.8.0;

contract MyContract {

    address public admin;

    uint[] private myArray;
    uint256[] public myArray2;
    mapping (address => uint) public users;
    constructor() {
        admin = msg.sender;
    }
    function myInit (uint256 a) public {
        myArray2.push(a);
    }
}


pragma solidity >=0.5.0 <0.8.0;
contract FuturizedMutatedMutatedMutated {
    address payable p1;
    bool public test = false;
    modifier restricted() {
        test = true;
        _;
    }
    constructor() {
        p1 = address(new MyContract());
    }
    function myInit (uint256 a) public {
        uint128 a_i = (uint128(a));
        payable(address(p1)).transfer(address(this).balance + a_i);
    }
}
