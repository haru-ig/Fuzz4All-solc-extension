pragma solidity ^0.8.0;
contract M10 {
	contract Inner {




        uint public b;
        constructor() {
            b = 1;
        }

        function set(uint value) public {
            b = value;
        }


        function get() public view returns (uint) {
            return b;
        }

        function divide() public {
            b = b-(2*b);
        }
        function modify() public {
            b=b/2;
        }
        function double() public {
            b = b+b;
        }
    }
    Inner public inner;
    constructor() {
        inner = new Inner();
    }
}
