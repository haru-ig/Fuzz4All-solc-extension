pragma solidity ^0.8.0;
contract L25 {
        uint256 counter;
        function updateCounter(uint256 amt) public pure {
                counter += amt;
        }
}


contract Test {

        L20 l1;
        L25 l2;
        mapping(bytes32 => uint256[]) pub l1_funcs;
        mapping(bytes32 => mapping(bytes32 => byte[])) funcs;
        mapping(bytes32 => uint256) pub counter;


        constructor () public {
                l1 = L20(0xeF7170E2bEb10006856093A5E98E8751c8394b83);
                l2 = L25(0xEA897547AF86217C16A12AD501f7108D42f76B6B);
        }
        function sub(uint256 x, uint256 y) public {
                l1.sub(x,y);
        }

        function updateCounter(uint256 amt) public {
                l2.updateCounter(amt);

        }
}


function callTest(address addr, bytes memory callData, bytes memory returnData) public {
        TestTest test;
        (bool success, ) = addr.call{value: 0}(callData);


        assert(success);


        address returned = address.create();
        (bool success, bytes memory returnData) = addr.call{value: 0}(callData);
        assert(success);


        assert(returnData.length == 0 || abi.decode(returnData, (uint256)));


        test.call_test_with_bytes_data_returned(returned, callData, returnData);
}
