pragma solidity ^0.8.0;
contract Etherism {
    address payable public owner;

    uint public a;

    function initialize() public {
        owner = msg.sender;
        a = 1337;
    }

    function modify() public {
        a = 0;
    }

}


contract Etherish {

    address payable public owner;

    uint public a;

    function initialize() public {
        owner = msg.sender;
        a = 1337;
    }

    function modify() external {
        a = 0;
    }

}


contract New {

    uint public a;
    uint public b;
    uint public c;

    function initialize() public {
        a = 1337;
        b = 3456;
    }

    function modify() public {
        b = 0;
        c = 0;
    }

}


contract New2 {

    uint public a;
    uint public b;
    uint public c;

    function initialize() public {
        a = 1337;
        b = 3456;
    }

    function modify() public {
        b = 0;

        function (uint x) pure;
    }

}


contract New3 {

    uint public a;
    uint public b;
    uint public c;

    function initialize() public {
        a = 1337;
        b = 3456;
    }

    function modify() public {

        function (uint x) pure;
        a = 0;
    }

    function call_modify() public {
        require(blockhash(b) > blockhash(a));
        b = 0;
    }

}


contract New4 {


    function initialize() public  {
        uint a = 1;
        uint b = 1;
    }

    function call_modify() public {

        function (uint x) pure;
    }

    function modify_modify() public {
        b = 0;
    }

    function call_modify_modify() public {
       modify_modify();
    }

}


contract New5 {

    uint public a;

    constructor() {
       a = 1;
    }

    function initialize() public {
    }

    function call_modify() public {
        uint a;
        a = a * 0;
    }

    function modify_modify() public  {
    }

    function call_modify_modify() public  {
        modify_modify();
    }

}

contract New6 {


    function initialize() public {
        uint a = 1;
    }

    function call_modify() public {
        uint a;
        a = a * 0;
    }

    function call_modify_modify() public  {
        function my() private pure returns(uint);
    }

    function modify_modify() public  {
    }
