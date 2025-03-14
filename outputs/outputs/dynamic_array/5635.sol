pragma solidity ^0.8.0;
contract Test67 {
    uint256[] public a;
    function f() public {
        a.push(1);
        a.push(2);
        a.push(3);
        a.push(a.length);
        a.push(1);
        a.push(2);
        a.push(3);




    }
}
