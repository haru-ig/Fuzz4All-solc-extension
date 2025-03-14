pragma solidity ^0.8.0;
contract Arrays11{
        uint16[] public s;
        uint220[] public s2;
        constructor() public {
            s.push(15);
            s.pop();
            s2.push(1100);
            s2.pop();
        }
}
