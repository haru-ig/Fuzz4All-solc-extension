pragma solidity ^0.8.0;
contract EtherTest1 {
    receive() external payable {}
}
pragma solidity ^0.8.0;
contract EtherTest2 {
    fallback () external payable {}
}
pragma solidity ^0.8.0;
contract EtherTest3 {
    receive () external {}
}
