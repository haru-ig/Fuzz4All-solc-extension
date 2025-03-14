pragma solidity ^0.8.0;
contract C {
    uint[] public array1;
    uint public v1;
    address a1;
    bool isFirstCall=true;
    constructor() {
        array1.push(1);
        v1=1;
        a1=address(1);
    }
    function pushTest() public {
        array1.push(0);
        v1=2;
        a1=a1;
    }
    function() public {

        if (isFirstCall) {
            isFirstCall=false;
            emit Pushed(address(a1));
            return;
        }
        array1.push(2);
    }
    event Pushed(address addressofPusher);
}
contract C {
    uint[] public array1;
    uint public v1;
    address a1;
    bool isFirstCall=true;
    constructor() {
        array1.push(1);
        v1=1;
        a1=address(1);
    }
    function pushTest() public {
        array1.push(2);
        v1=2;
        a1=a1;
    }
    function() public payable {

        if (isFirstCall) {
            isFirstCall=false;
            emit Pushed(address(a1));
            return;
        }
        array1.push(3);
    }
    event Pushed(address addressofPusher);
}
