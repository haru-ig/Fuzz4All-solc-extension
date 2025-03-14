pragma solidity ^0.8.0;
contract Contract {
        uint[] internal data;
        constructor() public {}
        function data1() public {
                if (data.length > 0) {
                        data.push(2);
                } else {
                        data.push(3);
                }
        }
        receive() public {
                data.push(4);
        }
}
