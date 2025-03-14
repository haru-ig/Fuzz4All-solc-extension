pragma solidity ^0.8.0;
contract Fallback {
    function fallback() external payable {}
}

pragma solidity ^0.8.0;
contract R {
    function rCall() public Fallback {
        callBack();
    }
    function callBack() public payable {
        revert("test");
    }
}
contract Test {
    function execute() public {

        R r;
        r.rCall();


        S s;
        s.callBack();






        Fallback f;
        f.fallback();
    }
}
contract EtherExample {
    function example() public {
        execute();
    }
}
contract RReceive {
    function rReceive(uint256 a) receive() {
        a;
    }
}
contract Example {
    address payable x;
    S s;
    RReceive r;
    uint256 a;


    uint8 x8;
    bool rB;
    address payable z;

    constructor() {
        x = msg.value;
    }

    function execute(uint8 a) public returns (uint1) {
        if (a > 68) {
            return a + 68;
        }
        S s;

        s.callBack();
        return 43 * a;
    }

    function fallback() public payable {
        address payable y = address(s);
        uint8 b;
        uint1 xx;
        b;
        uint256 c;
        xx;
    }

    function rReceive(uint256 aa) receive() {}
}
