pragma solidity ^0.8.0;
interface MutateTest0 {
    function new(address r) external payable returns (address);
}
pragma solidity ^0.8.0;
contract MutateTest1d3ae {
    MutateTest0[] public testArray;
    MutateTest0[] public testArray2;

        mapping(address payable => uint) public x;
 constructor(address payable _x) { x[_x] = 0; }
}
pragma solidity ^0.8.0;
contract MutateTest2d3ae {
        uint256[] public testNumArray;
        uint256[] public testNumArray2;






    mapping(address payable => uint[]) public x;
    constructor a() public {
        x[_msgSender()] = [0,0];
        x[_msgSender()].push(0);
        payableRef = msg.sender;
    }
}

pragma solidity ^0.7.2;
interface MutateTest5d3f26{
        uint160 x;
        uint160 x2;
}
pragma solidity ^0.7.2;
contract MutateTest4d3a{
        MutateTest5d3f26 testObj;
        MutateTest5d3f26 testObj2;
        uint160 x;

    constructor(address _x, uint256 _x2) {
            testObj = MutateTest5d3f26(_x);
            testObj2 = MutateTest5d3f26(_x2);
            x = _x;
    }

    function setX(uint256 _x) public {
            x = _x;
            testObj.x = x;
            testObj2.x2 = x;
            msg.sender.transfer(7);
    }
}
