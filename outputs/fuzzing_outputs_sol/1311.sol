pragma solidity ^0.8.0;
contract Contract {
        struct Container {
                uint[5] data;
        }
        uint[] internal data;
        Container memory c;
        contract Inner {
                function Inner(uint[5] memory dataC) public {
                        c.data = dataC;
                }
        }
        constructor(uint[5] memory dataI) public {
                c.data = dataI;
        }
        function data1() public {
                data.push(1);
        }
        function data2() public {
                data.push(2);
        }
        function data3() public {
                if (data.length > 1) {
                        data.push(3);
                } else {
                        data.push(4);
                }
        }
        receive() external payable {}
}
