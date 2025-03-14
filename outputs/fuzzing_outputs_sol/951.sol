pragma solidity ^0.8.0;

contract Call {
    fallback () external payable {
        address target = msg.sender;
        target.transfer(address(this).balance);





    }
    receive() external payable {

    }
}

pragma solidity ^0.8.0;
contract Call {
    fallback () external returns (uint256) {



        return 42;
    }
}

pragma solidity ^0.8.0;

contract Call {
    function () external payable { }
    function () external payable returns (uint256) {
        return _fallback();
    }
    function _fallback() pure public returns (uint256) {
    }
}
