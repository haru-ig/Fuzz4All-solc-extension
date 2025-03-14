pragma solidity ^0.8.0;
contract Bar {
    receive() external payable {
        receive();
    }
}

pragma solidity ^0.8.0;
contract Bar {
    receive() external payable {
        receive();
    }
    fallback () external payable {
    }
}

pragma solidity ^0.8.0;
contract Bar {
    fallback () external payable { }
}
