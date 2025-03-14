pragma solidity ^0.8.0;
contract R1 {
        uint private b;
        constructor() public {
            b = 10;
        }
        function setB(uint _b) public {
            b = _b;
        }
        function get() public view returns (uint) {
            return b + 3*b + b*b*b + 4*b*b;
        }
        function setB2() public {
            b = 20;
        }
}
contract R0 {
    constructor() public {



    }
    function get() public view returns (uint) {
        return 2*b + b;
    }
    function setB(uint _b) public {
        b = _b;
    }
    function setB2() public {
        b = 20;
    }
}
contract R3 {
    constructor (uint _x) public {
        b = _x;
        b = 2;
        b = 3;
    }
    function get() public view returns (uint) {
        return b + 2*b*b;
    }
    function setB(uint _b) public {
        b = _b;
    }
}
contract MutatedR {
    function mutate(uint _b) public {
        setB2();
        if (a == 0) {
            seta(1);
        }
        b = 10;
    }
    function get() public view returns (uint) {
        return b*b + 10;
    }
    function setB2() public {
        b = 20;
    }

}

pragma solidity ^0.8.0;
contract R4 {
    constructor(uint _b) public {
        b = _b;
        b = b*b + b + 10;
        b = b + b + 3*b + 2;
    }
    function get() public view returns (
