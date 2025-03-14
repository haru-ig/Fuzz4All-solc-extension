pragma solidity ^0.8.0;
contract S4 {
        uint private a;
        uint256 private b;
        constructor() public {
            a = a + 1;
            b = a + 2*a + (a - 1)*a*(a + 3) + a*(a + 4);
        }
        function change(uint256 value) public {
            uint256 x = value + 1;
            x = value + 2;
            a = a + 2;
        }
        function notEnoughChange(uint256 value) public {
            uint256 x = value - 1;
            x = value - 2;
            a = a + 1;
        }
        function call(uint256 value) public {
            uint256 z = a + value;
            z = value + a;
            a = a + a;
        }
    }
contract S4C {
        uint private a;
        uint256 private b;
        constructor() public {
            a = a + 1;
            b = a + 2*a + (a - 1.5)*a*(a + 3) + a*(a + 4);
        }
        function change(uint256 value) public {
            uint256 x = value + 1;
            x = value + 2;
            u: {

                a = a + 2; break u;
            }
            a = a + 2;
        }
        function notEnoughChange(uint256 value) public {

            u: {
                a = a + 1; break u;
            }
            a = a + 1;
        }
        function call(uint256 value) public {
            uint256 z = a + value;
            z = value + a;
            a = a + a;
        }
    }
