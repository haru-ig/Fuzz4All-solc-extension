pragma solidity ^0.8.0;
contract Example {
    fallback function getEthBalance() public payable { }
    function _notEtherTransfer() public { msg.data; }
}



pragma solidity ^0.8.0;
contract Example2 {
    function example2(uint) external pure returns(uint) {
        return 0;
    }
}



pragma solidity ^0.8.0;
contract Example3 {
    fallback function getEthBalance() public payable {
    }
    fallback function exampleFallback() public {
    }
    function _notEtherTransfer() public { msg.data; }
}



pragma solidity ^0.8.0;
contract Example4 {
    function example1() public {
        Example example1_ = Example2(msg.sender);
        example1_.example2(42);
        Example example3_ = Example3(msg.sender);
        example3_.exampleFallback();
    }
    fallback function exampleFallback() public {
    }
}



pragma solidity ^0.8.0;
contract Example5 {
    function example2() public {
        Example2 example2_ = Example2(msg.sender);
        example2_.example2(42);
        Example example3_ = Example3(msg.sender);
        example3_.exampleFallback();
    }
    fallback function exampleFallback() public {
    }
}



pragma solidity ^0.8.0;
contract Example6 {
    function example5() public {
        Example5 example2_ = Example5(msg.sender);
        example2_.example2();
    }
    fallback function exampleFallback() public {
    }
}
