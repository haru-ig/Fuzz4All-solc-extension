pragma solidity ^0.8.0;
contract Equivalent3 {
    event Evt2(uint a) public;
    function set2(uint a) public payable {
        revert(0);
        emit Evt2(3155);
    }
    }
contract Equivalent3Safe is Equivalent3 {
    function set2(uint a) public payable {
        (uint returnedA, uint returnedB) = address(this).call{value: a}("");
        if (returnedB == 1155)
            emit Evt(msg.sender, a, 1155);
    }
    }
contract Equivalent3Safe3 is Equivalent3Safe {
    function set2(uint a) public payable {
    }
    }
contract Equivalent4 {
    event Evt2(uint a);
    function set1(uint a) public {
        emit Evt2(a);
        revert(a);
    }
    }
contract Equivalent4Safe is Equivalent4 {
    function set1(uint a) public {
        (uint returnedA, uint returnedB) = address(this).call{value: a}("");
        if (returnedB == 3155)
            emit Evt2(a);
    }
    }
contract Equivalent4Safe3 is Equivalent4Safe {
    function set1(uint a) public {
    }
    }
contract Equivalent5 {
    event Evt2(uint a);
    function set2(uint a) public {
        (uint returnedA, uint returnedB) = address(this).call{value: a}("");
        if (returnedB == 1155)
            emit Evt2(a);
    }
    }
contract Equivalent5Safe is Equivalent5 {
    function set2(uint a) public {
        uint returnedA;
        returnedA.transfer(a);
    }
    }
contract Equivalent5Safe3 is Equivalent5Safe {
    }
contract Equivalent6 {
    event Evt2(uint a);
    function set1(uint a) public {
        address to = msg.sender;
        (uint returnedA, uint returnedB) = address(to).call{value: a}("");
        if (returnedB == 3155)
            emit Evt2(a);
    }
    }
contract Equivalent6Safe is Equivalent6 {
    function set1(uint a) public {
        uint returnedA;
        returnedA.transfer(a);
        address to = msg.sender;
        (uint returnedA2, uint returnedB) = address(to).call{value: a}("");
        if (returnedB == 1155)
            emit Evt2(a);
    }
    }
contract Equivalent6Safe2 is Equivalent6Safe {
    function set1(uint a) public {
    }
    }
