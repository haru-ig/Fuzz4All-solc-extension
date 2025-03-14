pragma solidity ^0.8.0;
contract Test73 {







    address[] internal a;
    function f() public {



        if (a.length > 0) {
            require(address(a[0]) == a.length);
        }
        a.push(msg.sender);
        require(a[0] == msg.sender);
    }
}
