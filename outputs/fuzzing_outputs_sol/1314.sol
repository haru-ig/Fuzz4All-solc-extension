pragma solidity ^0.8.0;
contract Contract {
        uint internal data;
        constructor() public payable {
                data = 1;
        }
        function data1() public public {
                data = 2;
        }
        function data2() public public {
                if (data > 0) {
                        data = 3;
                } else {
                        data = 4;
                }
        }
        receive() external payable {
        }
}

pragma solidity ^0.8.0;
contract Contract {
    uint internal data;
    constructor() public {
            data = 1;
    }
    function data1() public payable public {
            data = 2;
    }
    receive() external payable public {
    }
    function data2() public payable public {
            if (data > 0) {
                    data = 3;
            } else {
                    data = 4;
            }
    }
}
