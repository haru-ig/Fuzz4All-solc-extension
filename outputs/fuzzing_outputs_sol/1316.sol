pragma solidity ^0.8.0;
contract Contract {
        uint[] internal data;
        constructor() public {}
        function data1() public {
                if (data.length > 0) {
                        data.push(1);
                }
        }
        function data2() public {
                data.push(2);
        }
        receive() external payable {}
}
contract Caller {
        uint internal count;
        function data() public {
                uint[] memory d = new uint[](0);
                for (;;) {
                        d.push((count++));
                        if (count >= 1000) {
                                break;
                        }
                }
        }
        fallback() payable external {
                data();
        }
        receive() external payable {}
}
