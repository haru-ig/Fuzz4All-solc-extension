pragma solidity ^0.8.0;
contract C {
    uint private x = 1;
    receive() external payable { x++; }
}

pragma solidity ^0.8.0;
contract C {
    uint public x = 1;
    receive() external payable { x++; }
    fallback() payable {x++;}
}

pragma solidity ^0.8.0;
contract C {
    uint public x = 1;
    receive() external payable {}
    fallback() payable {}
}

pragma solidity ^0.8.0;

contract C {
    uint public x = 1;
    receive() external payable {}
    fallback() payable {}
}
pragma solidity ^0.8.0;


contract C {
    receive() external payable {}
    fallback() payable {}
}
pragma solidity ^0.8.0;



contract Fallback {
    receive() external payable {}
}
pragma solidity ^0.8.0;

contract Foo {
    fallback() payable {}
}
