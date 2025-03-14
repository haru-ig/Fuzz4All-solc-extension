pragma solidity ^0.8.0;
contract Contract{
        uint[] internal data;
        constructor() {}
        function data1() public {
                data.push(1);
        }
        function data2() public {
                if (data.length > 0) {
                        data.push(2);
                } else {
                        data.push(3);
                }
        }
        receive() external {}
}
