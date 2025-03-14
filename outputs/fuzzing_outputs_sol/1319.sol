pragma solidity ^0.8.0;
contract Contract {
        bytes1[] internal data;

        constructor() public {}

        function data1() public {
            data.push(bytes1(2));
        }
        function data2() public {
            data.push(bytes1(3));
        }
        function data3() public pure {
            data.push(bytes1(1));
        }

        function data4(uint) public pure {
            data.push(bytes1(0));
        }
        function data5(bytes1) public pure {
            data.push(bytes1(2));
        }
}
